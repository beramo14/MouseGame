surface_set_target(global.lightsurf);
gpu_set_blendmode(bm_add);
draw_sprite_ext(spt_flash,0,mouse_x,mouse_y,1,1,0,c_white,1);
gpu_set_blendmode(bm_normal);
surface_reset_target();