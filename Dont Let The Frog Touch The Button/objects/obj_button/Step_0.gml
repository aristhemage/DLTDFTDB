if(obj_master.gamestate == GAMESTATES.PLAYING){
	if(mouse_check_button_released(mb_left)){
		selected = false;
	}

	if(mouse_check_button_pressed(mb_left) && point_distance(x,y,mouse_x,mouse_y) < 32){
		obj_master.cur_selected = id;
		selected = true;
	}

	if(selected && obj_master.cur_selected != id){
		selected = false;	
	}

	if(place_meeting(x,y,obj_frog) && !selected){
		obj_master.gamestate = GAMESTATES.DEAD;
		
	}

	if(selected){
		x = mouse_x;
		y = mouse_y;
	}

	depth = -y;
}