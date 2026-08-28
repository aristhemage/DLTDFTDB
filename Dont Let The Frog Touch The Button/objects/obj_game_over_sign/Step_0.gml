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
	instance_destroy(obj_frog);
	instance_destroy(obj_button);
	with(obj_master){
		cur_score = 0;
		survive_timer = 60;
		seconds_survived = 0;
		frog_min = 180;
		frog_max = 300;
		frog_timer = irandom_range(frog_min,frog_max);

		button_min = 600;
		button_max = 1200;
		button_timer = irandom_range(button_min,button_max);
		dead = false;
		pos = [irandom_range(100,room_width-100),irandom_range(100,room_height-100)];
		instance_create_depth(pos[0],pos[1],1,obj_button_spawner);
		instance_create_depth(-99999,-9999,1,obj_frog);	
	}
	instance_destroy();
}