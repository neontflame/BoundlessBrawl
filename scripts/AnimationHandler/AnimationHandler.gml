function handle_basic_animation(){
	if (status == "default") {
		if (grounded) {
			if (abs(vel_x) > 0 && (key_right || key_left)) {
				if (is_running) {	anim = "run"	}
				else {	anim = "walk"	}
			}
			else {	anim = "idle"	}
		}
	}
}