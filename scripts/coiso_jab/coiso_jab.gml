function coiso_jab_init(){
	jab_count = 3;
	jabs_made = 0;
}

// oh wow attacks actually work this is kinda huge
function coiso_jab() {
	attack_stops_player = true;
	
	if (jabs_made == 0) {
			// jab 1
			atkhit = make_hitbox(self, self, 10, 30, -20, 10, 40, 10, 0.1, 10, 2);
			attack_timer = 10;
	}
	if (jabs_made == 1) {
			// jab 2
			atkhit = make_hitbox(self, self, 15, 30, -20, 20, 30, 10, 0.1, 10, 2);
			attack_timer = 20;
	}
	if (jabs_made == 2) {
			// jab 2
			atkhit = make_hitbox(self, self, 20, 30, -20, 30, 75, 10, 0.1, 10, 2);
			attack_timer = 30;
	}
	
	if (jabs_made < jab_count) {	jabs_made += 1; }
	if (jabs_made >= jab_count) {	jabs_made = 0; }
}