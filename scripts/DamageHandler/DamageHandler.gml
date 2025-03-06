function dmg_player(player, angle, damage, knockback, knockframe, _hitstun){
	var the_thing = lerp(player.dmg_percent, 100, 0.3);

	hitstun = _hitstun;
	
	player.dmg_percent += damage;
	player.vel_x = (the_thing * knockback) * (sin(degtorad(angle)) + horizontal_di);
	player.vel_y = (the_thing * knockback) * ((cos(degtorad(angle)) + vertical_di) * -1);
	
	player.hurt_frames = knockframe;
	player.status = "dmg";
}