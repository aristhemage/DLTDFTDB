if(image_xscale < 5){
	image_xscale += 0.1;
	image_yscale += 0.18;
}else{
	if(txt != show_txt){
		show_txt += string_char_at(txt,char);
		char++;
	}
}

if(keyboard_check_released(ord("R"))){
	restart();
	instance_destroy();
}


if(keyboard_check_released(ord("S"))){
	obj_master.cash += round(obj_master.cur_score/10);
	obj_master.gamestate = GAMESTATES.SHOP
	instance_create_depth(room_width-256,-256,-999,obj_shop);
	instance_destroy();
}