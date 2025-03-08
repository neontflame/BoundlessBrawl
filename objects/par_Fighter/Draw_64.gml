var nums = font_add_sprite_ext(hud_Number, "0123456789%'`:;,", true, -2);

draw_set_font(Font1);
draw_text(0, 0, "grounded: " + string(grounded));
draw_text(0, 16, "status: " + status);
draw_text(0, 32, "invince frames: " + string(no_hurt_frames));
draw_text(0, 48, "hurt frames: " + string(hurt_frames));

draw_text(0, 80, "velX: " + string(vel_x));
draw_text(0, 96, "velY: " + string(vel_y));

draw_text(0, 128 + 32, "x DI: " + string(horizontal_di));
draw_text(0, 128 + 48, "y DI: " + string(vertical_di));

draw_text(0, 128 + 64, "hitstun: " + string(hitstun));

draw_text(0, 128 + 80, "attack timer: " + string(attack_timer));


draw_set_font(nums);
draw_text(0, 256, string(dmg_percent) + "%");
