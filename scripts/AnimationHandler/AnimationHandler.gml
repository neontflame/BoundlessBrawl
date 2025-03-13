function handle_basic_animation(){
	if (status == "default") {
		if (grounded) {
			if (abs(vel_x) > 1) {
				if (is_running) {	anim = "run"	}
				else {	anim = "walk"	}
			}
			else {	anim = "idle"	}
		}
	}
}