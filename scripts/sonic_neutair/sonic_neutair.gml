function sonic_neutair(){
	attack_timer = 25;
	anim = "neutralair";
}

function sonic_neutair_step(){
	if (sprite_index == fitspr_Sonic_instashield) {
		if (grounded) {
			attack_timer = 0;
			kill_hitboxes(self, self);
		}
	}
}