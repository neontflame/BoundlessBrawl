function key_handler(){
	// TODO: REWRITE THIS TO ALLOW FOR CUSTOM KEYBINDS LATER
	key_left = keyboard_check(vk_left);
	key_left_press = keyboard_check_pressed(vk_left);
	key_down = keyboard_check(vk_down);
	key_down_press = keyboard_check_pressed(vk_down);
	key_up = keyboard_check(vk_up);
	key_right = keyboard_check(vk_right);
	key_right_press = keyboard_check_pressed(vk_right);
	
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
	if (can_control && can_control_attack && status != "dmg") {
		// getting down from platforms
		if (key_down_press) {
			if (!grounded) {
				vel_y = 10;
			}
		}
		
		if (check_collision(0, 1, par_Platform, true)) {
			if (key_down) {
				y += 1;
				grounded = false;
			}
		}
		
		if (status != "airdodge" && status != "dmg") {
		if (status == "dmgcontrollable") {	vel_x += ((key_right - key_left) * move_speed) / 3.25;	}
		else {	
			if ((key_left_press && vel_x < 0) || (key_right_press && vel_x > 0)) {
				is_running = true;
				vel_x = (key_right - key_left) * run_speed * 5;
			}
			
			if (abs(vel_x) < 2 && !key_left && !key_right) {
				is_running = false;
			}
			
			if (is_running) {
				vel_x += (key_right - key_left) * run_speed;
			} else {
				vel_x += (key_right - key_left) * move_speed;
				}	
			}
		}

		// ground jump
		if (grounded && key_jump) {
			vel_y = -jump_height;
			has_jumped = true;
		}

		// midair jumps
		if (!grounded && key_jump && midair_jump_count < midair_jump_quant) {
			midair_jump_count += 1;
			vel_y = -jump_height;
			has_jumped = true;
		}
		
		// AIRDODGE 
		if (key_dodge && (status != "freefall" && status != "airdodge" && status != "dodge")) {
			if (!grounded) {
				status = "airdodge";
				reset_airdodge_timer();
				no_hurt_frames = airdodge_timer;
				vel_x = (key_right - key_left) * (move_speed * airdodge_coefficient);
				vel_y = (key_down - key_up) * (move_speed * airdodge_coefficient);
			}
		}
	}
}