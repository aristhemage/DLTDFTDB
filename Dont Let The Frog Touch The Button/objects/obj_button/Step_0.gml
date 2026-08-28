if(keyboard_check_pressed(ord("R"))){
	room_restart()	
}

if(selected){
	x = mouse_x;
	y = mouse_y;
}

depth = -y;

if(mouse_check_button_released(mb_left)){
	selected = false;
}

if(mouse_check_button_pressed(mb_left) && point_distance(x,y,mouse_x,mouse_y) < 64){
	obj_master.cur_selected = id;
	selected = true;
}

if(selected && obj_master.cur_selected != id){
	selected = false;	
}

if(place_meeting(x,y,obj_frog) && !selected){
	show_debug_message("Ded")	
}