function collide_with_thing(_ply, _thing) {
	return collision_rectangle(	(_ply.x - _ply.hitWidth/2), 
								(_ply.y - _ply.hitHeight), 
								(_ply.x + _ply.hitWidth/2), 
								_ply.y, 
								_thing, true, false);
}

function check_collision(_move_x, _move_y, _collided_obj, _is_plat) 
{
	// if (place_meeting(x + _move_x, y + _move_y, par_Solid
	if (collision_rectangle((x - hitWidth/2) + _move_x, 
							(y - hitHeight) + _move_y, 
							(x + hitWidth/2) + _move_x, 
							y + _move_y, 
							_collided_obj, true, false))
	{
		if (_is_plat) {
			if (y > _collided_obj.bbox_top) {	return false;	}
		}
		return true;
	}
	
	return false;
}

function botherWithCollision() {
	var _move_count = abs(vel_x);
	var _move_once = sign(vel_x);

	repeat (_move_count)
	{
		var _collision_found = check_collision(_move_once, 0, par_Solid, false);

		// This checks if collision_found is false, meaning a collision was not found, and the player is free to move once on the X axis.
		if (!_collision_found)
		{
			x += _move_once;
		}
		// This 'else' block runs if a collision was found.
		else
		{
			if (status == "dmg") {
				vel_x = vel_x * -0.85;
				hurt_frames = hurt_frames * 2;
				break;
			}
			vel_x = 0;
	
			break;
		}
	}

	var _move_count = abs(vel_y);
	var _move_once = sign(vel_y);

	repeat (_move_count)
	{
		var _collision_found = check_collision(0, _move_once, par_Solid, false) || check_collision(0, _move_once, par_Platform, true);

		if (!_collision_found)
		{
			y += _move_once;
		}
		// This 'else' block runs if a collision was found.
		else
		{
			if (status == "dmg") {
				vel_y = vel_y * -0.85;
				hurt_frames = hurt_frames * 1.1;
				break;
			}
			vel_y = 0;
			if (grounded) {
				has_jumped = false; 
				// take out this check to make upside down wavedashing possible
				midair_jump_count = 0;
				switch (status) {
					case "airdodge":
						status = "default";
						vel_x = vel_x * airdodge_coefficient;
					case "freefall":
						status = "default";
					case "dmgcontrollable":
						if (hurt_frames < 1) {
							status = "default";
						}
					default:
						// woahly shit
				}
				airdodge_timer_cd = 0;
				airdodge_anim_timer_cd = 0;
			}
	
			break;
		}
	}
}

function daFlip(){
	// da flip
	if (grounded && (can_control && can_control_attack)) {
		if (key_left)
		{
			is_mirrored = true;
			image_xscale = -1;
			image_yscale = 1;
		}
		else if (key_right)
		{
			is_mirrored = false;
			image_xscale = 1;
			image_yscale = 1;
		}
	}
	
	// things that do not have to do with flipping
	if (hurt_frames > 0)
	{
		hurt_frames -= 1;
	}
	
	if (hurt_frames <= 0 && status == "dmg")
	{
		status = "dmgcontrollable";
	}
	// This checks if no_hurt_frames is greater than 1, meaning the character is currently invincible and can't be hurt.
	if (no_hurt_frames > 0)
	{
		// In that case we reduce the variable by 1, as one frame as passed. Eventually it will reach 0 again and the character will be able
		// to be hurt.
		no_hurt_frames -= 1;

		// This part handles making the character flash on and off when it's invincible, by changing its alpha between 0 and 1.
		// If the remainder of no_hurt_frames divided by 12 is above 6, we'll set the alpha to 0.
		// Otherwise we'll set it to 1.
		if (no_hurt_frames % 2 > 0)
		{
			// This makes the character invisible.
			image_alpha = 0;
		}
		else
		{
			// This makes the character visible again.
			image_alpha = 1;
		}
	}
}

function airdodge_timer_dec() {
	if airdodge_timer_cd > 0 { airdodge_timer_cd -= 1; }
	if airdodge_anim_timer_cd > 0 { airdodge_anim_timer_cd -= 1; }
}

function reset_airdodge_timer() {
	airdodge_timer_cd = airdodge_timer;
	airdodge_anim_timer_cd = airdodge_anim_timer;
}

