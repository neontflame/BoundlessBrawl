function coiso_jab_init(){
	jab_count = 3;
	jabs_made = 0;
	time_since_jab = 0;
}

// oh wow attacks actually work this is kinda huge
function coiso_jab() {
	attack_stops_player = true;
	
	time_since_jab = 0;
	
	if (jabs_made == 0) {
			// jab 1
			atkhit = make_hitbox(self, self, 10, 30, -20, 10, 40, 10, 0.1, 10, 2);
			attack_timer = 10;
			atk_name = "jab1";
	}
	if (jabs_made == 1) {
			// jab 2
			atkhit = make_hitbox(self, self, 15, 30, -20, 20, 30, 10, 0.1, 10, 2);
			attack_timer = 20;
			atk_name = "jab2";
	}
	if (jabs_made == 2) {
			// jab 2
			atkhit = make_hitbox(self, self, 20, 30, -20, 30, 75, 10, 0.1, 10, 2);
			attack_timer = 30;
			atk_name = "jab3";
	}
	
	if (jabs_made < jab_count) {	jabs_made += 1; }
	if (jabs_made >= jab_count) {	jabs_made = 0; }
}

function coiso_jab_step() {
	time_since_jab += 1;
	
	if (time_since_jab > 30) {
		jabs_made = 0;
	}
}