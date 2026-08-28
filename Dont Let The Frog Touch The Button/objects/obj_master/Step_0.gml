frog_timer--;
if(frog_timer <= 0){
	frog_timer = irandom_range(frog_min,frog_max);
	var choice = choose(DIRECTIONS.UP,DIRECTIONS.DOWN,DIRECTIONS.LEFT,DIRECTIONS.RIGHT);
	var pos = outside_room(obj_frog,choice)
	instance_create_depth(pos[0],pos[1],1,obj_frog);
}

button_timer--;
if(button_timer <= 0){
	button_timer = irandom_range(button_min,button_max);
	var pos = [irandom_range(100,room_width-100),irandom_range(100,room_height-100)];
	instance_create_depth(pos[0],pos[1],1,obj_button_spawner);
}

survive_timer--;
if(survive_timer <= 0){
	survive_timer = 60;
	survive_amount++;
}