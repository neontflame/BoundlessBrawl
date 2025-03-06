// sera q assim vai
if (attack_timer > 1) {
	can_control_attack = !attack_stops_player;
} else {
	can_control_attack = true;
}
if (hitstun < 1) { 
	daFlip(); 
	airdodge_timer_dec();
	player_controller();
}


if (airdodge_anim_timer_cd == 0 && (status == "airdodge" || status == "freefall")) {
	status = "freefall";
}

if (keyboard_check_pressed(ord("V"))) {
	// player, angle, damage
	dmg_player(self, 25, 5, 0.25, 10, 10);
}