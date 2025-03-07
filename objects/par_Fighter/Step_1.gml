
if (attack_timer > 0) {
	attack_timer -= 1;
}

if (hitstun > 0) {
	hitstun -= 1;
}
	
if (hitstun < 1) {
	grounded = check_collision(0, 1, par_Solid, false) || check_collision(0, 1, par_Platform, true);

	if (grounded)
	{
		grounded_x = x;
		grounded_y = y;
	}

	if (status == "airdodge") {
		vel_x = lerp(vel_x, 0, 0.1);
		vel_y = lerp(vel_y, 0, 0.1);
	} else {
		if (status == "dmg" || status == "dmgcontrollable") {
			// nothing lol
			}
		else { vel_x = lerp(vel_x, 0, friction_power); }
		if (grav_enabled && grav_enabled_attack) { vel_y += grav_speed; }
	}
}