function sonic_fair(){
	attack_timer = 25;
	anim = "fair";
	image_index = 0;
}

function sonic_fair_step(){
	if (sprite_index == fitspr_Sonic_eagle) {
		if (grounded) {
			attack_timer = 0;
		}
	}
}