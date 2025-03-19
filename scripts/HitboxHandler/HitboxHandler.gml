function make_hitbox(_anchor, _owner, _size, x_off, y_off, timer, _angle, _damage, _knockback, _knockframe, _hitstun){
	var hitboxy = instance_create_depth(-1000, -1000, -100, hit_Hitbox); 
	with (hitboxy) {
		anchor = _anchor;
		owner = _owner;
		size = _size;
		
		xOffset = x_off;
		yOffset = y_off;
		
		angle = _angle;
		damage = _damage;
		knockback = _knockback;
		knockframe = _knockframe;
		hitstun = _hitstun;
		
		if (anchor.image_xscale == -1) {
			angle = 360 - angle;
		}

		if (timer > 0) {
			alarm[0] = timer;
		}
	}
	
	return hitboxy;
}

function kill_hitboxes(_anchor, _owner){
	with (hit_Hitbox) {
		if (_anchor == self.anchor || _owner == self.owner) {
			instance_destroy(self);
		}
	}
}