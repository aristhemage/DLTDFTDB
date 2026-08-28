if(obj_master.gamestate == GAMESTATES.PLAYING){
	var close_frog = instance_nearest(x,y,obj_frog);

	while(distance_to_object(close_frog) < 500){
		x = irandom_range(100,room_width-100);
		y = irandom_range(100,room_height-100);
	}

	instance_create_depth(x,y,1,obj_button);
	instance_destroy();
}