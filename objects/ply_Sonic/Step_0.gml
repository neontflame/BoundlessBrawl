event_inherited();

// THE WHOLE ATTACK SHEBANG
sonic_neutair_step();
sonic_fair_step();

/// ANIMATIONS ///
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
if (anim == "fall") {
		sprite_index = fitspr_Sonic_fall;
}

// ATTACKS WOO
if (anim == "neutralair") {
		sprite_index = fitspr_Sonic_instashield;
}
if (anim == "fair") {
		sprite_index = fitspr_Sonic_eagle;
}