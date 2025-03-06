// THIS IS FROM THE PLATFORMER TEMPLATE BTW
// i just took out comments because. idk it just made it easier for me i guess
move_speed = 2;
friction_power = 0.2;

jump_height = 13;
midair_jump_quant = 1; // the quantity

status = "default";

grav_enabled = true;
grav_enabled_attack = true; // just in case
grav_speed = 0.85;

vel_x = 0;
vel_y = 0;

grounded = false;
grounded_x = x;
grounded_y = y;

// technicalities
hitstun = 0;
horizontal_di = 0;
vertical_di = 0;

can_control = true;
can_control_attack = true; // justin case 2
dmg_percent = 0;
hurt_frames = 0;
no_hurt_frames = 0;
midair_jump_count = 0; // how many jumps done

// airdodge
airdodge_coefficient = 6;

airdodge_timer = 10;
airdodge_anim_timer = 30;

airdodge_timer_cd = 0; // "cd" means countdown
airdodge_anim_timer_cd = 0;

// attacks
attack_timer = 0;
attack_stops_player = false;