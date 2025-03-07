function key_handler(){
	// TODO: REWRITE THIS TO ALLOW FOR CUSTOM KEYBINDS LATER
	key_left = keyboard_check(vk_left);
	key_down = keyboard_check(vk_down);
	key_up = keyboard_check(vk_up);
	key_right = keyboard_check(vk_right);
	
	key_jump = keyboard_check_pressed(ord("Z"));
	key_attack = keyboard_check_pressed(ord("X"));
	key_special = keyboard_check(ord("C"));
	
	key_dodge = keyboard_check(ord("A"));
}

function player_controller(){
	if (status == "dmgcontrollable") {
		if (vel_x > 10) {	vel_x = 10;	}
		if (vel_x < -10) {	vel_x = -10;	}
	}
	if (can_control && can_control_attack) {
		// getting down from platforms
		if (check_collision(0, 1, par_Platform, true)) {
			if (key_down) {
				y += 1;
				grounded = false;
			}
		}
		
		if (status != "airdodge" && status != "dmg") {
		if (status == "dmgcontrollable") {	vel_x += ((key_right - key_left) * move_speed) / 3.25;	}
		else {	vel_x += (key_right - key_left) * move_speed;	}
		}

		// ground jump
		if (grounded && key_jump) {
			vel_y = -jump_height;
		}

		// midair jumps
		if (!grounded && key_jump && midair_jump_count < midair_jump_quant) {
			midair_jump_count += 1;
			vel_y = -jump_height;
		}
		
		// AIRDODGE 
		if (!grounded && key_dodge && (status != "freefall" && status != "airdodge")) {
			status = "airdodge";
			reset_airdodge_timer();
			no_hurt_frames = airdodge_timer;
			vel_x = (key_right - key_left) * (move_speed * airdodge_coefficient);
			vel_y = (key_down - key_up) * (move_speed * airdodge_coefficient);
		}
	}
}