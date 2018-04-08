gpu_set_blendmode(bm_subtract);
draw_surface_ext(global.lightsurf,camera_get_view_x(global.cam),camera_get_view_y(global.cam),1,1,0,c_white,1);
gpu_set_blendmode(bm_normal);