if (hitstun < 1) botherWithCollision();
key_handler();

horizontal_di = (key_right - key_left) * 0.25;
vertical_di = (key_up - key_down) * 0.25;
	
if (attack_timer == 0) {
	handle_basic_animation();
}