draw_set_alpha(0.25);
draw_circle(x, y, size, false);
draw_set_alpha(1);
draw_circle(x, y, size, true);
draw_line(x, y, x + (size * sin(degtorad(angle))), y - (size * cos(degtorad(angle))))