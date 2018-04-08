surface_set_target(global.lightsurf);
gpu_set_blendmode_ext(bm_inv_dest_color,bm_inv_src_color);
draw_set_color($ffffff);
draw_rectangle(0,0,camera_get_view_width(global.cam),camera_get_view_height(global.cam),0);
gpu_set_blendmode(bm_normal);
surface_reset_target();