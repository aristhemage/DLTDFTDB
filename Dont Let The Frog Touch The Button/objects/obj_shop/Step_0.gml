if(y <= 400){
	y += 10
}else{
	if(!instance_exists(obj_shop_frog)){
		instance_create_depth(280,600,-999,obj_shop_frog)	
	}
	if(!instance_exists(obj_shop_button)){
	for(var i = 0; i < SHOP.END_LIST; i++)
		instance_create_depth(x-200,y + i*96-300,depth-10,obj_shop_button,{shop_id: i});	
	}
	if(!instance_exists(obj_play_again)){
		instance_create_depth(x,y+300,depth - 100,obj_play_again);	
	}
}

if(image_alpha < 1){
	image_alpha += 0.05;	
}

