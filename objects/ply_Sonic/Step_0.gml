event_inherited();

coiso_jab_step();

/*
idk if its a gamemaker beta quirk but for some 
godforsaken reason switches dont work properly
so i have to do this
*/
if (anim == "idle") {
		sprite_index = fitspr_Sonic_idle;	
} 
if (anim == "walk") {
		sprite_index = fitspr_Sonic_walk;
}
if (anim == "run") {
		sprite_index = fitspr_Sonic_run;
}
if (anim == "jump") {
		sprite_index = fitspr_Sonic_spin;
}
if (anim == "airdodge") {
		sprite_index = fitspr_Sonic_airdodge;
}