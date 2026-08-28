frog_min = 180;
frog_max = 300;
frog_timer = irandom_range(frog_min,frog_max);

button_min = 600;
button_max = 1200;
button_timer = irandom_range(button_min,button_max);

cur_selected = -1;

survive_timer = 60;
cur_score = 0;

seconds_survived = 0;

high_score = 0;
gamestate = GAMESTATES.PLAYING

pos = [irandom_range(100,room_width-100),irandom_range(100,room_height-100)];
instance_create_depth(pos[0],pos[1],1,obj_button_spawner);

cash = 0;

