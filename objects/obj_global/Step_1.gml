surface_set_target(global.lightsurf);
draw_set_color(c_black);
draw_set_alpha(1);
draw_rectangle(0,0,camera_get_view_width(global.cam),camera_get_view_height(global.cam),0);
surface_reset_target();