if ((other != anchor && other != owner)) {
		dmg_player(other, angle, damage, knockback, knockframe, hitstun);
		instance_destroy(self);
}