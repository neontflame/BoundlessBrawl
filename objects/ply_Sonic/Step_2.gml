event_inherited();

if (status != "airdodge") {
	
	if (key_attack && attack_timer < 4) {
		if (!grounded) {
			if ((key_right && !is_mirrored) || (key_left && is_mirrored)) {	sonic_fair();
			}
			else sonic_neutair();
		}
	}
}