var nums = font_add_sprite_ext(hud_Number, "0123456789%'`:;,", true, -2);

draw_set_font(Font1);
draw_text(view_xport + 0, view_yport + 0, "grounded: " + string(grounded));
draw_text(view_xport + 0, view_yport + 16, "status: " + status);
draw_text(view_xport + 0, view_yport + 32, "invince frames: " + string(no_hurt_frames));
draw_text(view_xport + 0, view_yport + 48, "hurt frames: " + string(hurt_frames));

draw_text(view_xport + 0, view_yport + 80, "velX: " + string(vel_x));
draw_text(view_xport + 0, view_yport + 96, "velY: " + string(vel_y));

draw_text(view_xport + 0, view_yport + 128 + 32, "x DI: " + string(horizontal_di));
draw_text(view_xport + 0, view_yport + 128 + 48, "y DI: " + string(vertical_di));

draw_text(view_xport + 0, view_yport + 128 + 64, "hitstun: " + string(hitstun));

draw_text(view_xport + 0, view_yport + 128 + 80, "attack timer: " + string(attack_timer));

draw_text(view_xport + 0, view_yport + 128 + 128, "has jumped: " + string(has_jumped));


// CHARACTER HUD
draw_sprite(hud_FighterHolder, 0, view_xport + 9, view_yport+397);
draw_set_font(nums);
draw_text(view_xport + 79, view_yport + 405, string(dmg_percent) + "%");
draw_set_font(hud_Fighterfont);
draw_text(view_xport + 82, view_yport + 439, fitname);