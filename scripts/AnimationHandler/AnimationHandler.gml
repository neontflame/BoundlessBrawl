function handle_basic_animation(){
	// ground animations
	if (status == "default") {
		if (attack_timer < 1) {
			if (grounded && !key_jump) {
				if (abs(vel_x) > 0 && (key_right || key_left)) {
					if (is_running) {	anim = "run"	}
					else {	anim = "walk"	}
				}
				else {	
					anim = "idle";
				}
			}
		
			// ground jump
			if (has_jumped) {
				anim = "jump";
			
				if (vel_y > 0) {
					anim = "fall";
				}
			}
		}
		
		if (grounded && has_jumped) {
			attack_timer = 0;
			anim = "land";
		}
	}
	if (status == "airdodge") {
		anim = "airdodge";
	}
	if (status == "freefall") {
		anim = "fall";
	}
}