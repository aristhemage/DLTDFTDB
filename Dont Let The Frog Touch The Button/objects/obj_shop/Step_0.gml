if(y <= 400){
	y += 10
}else{
	if(!instance_exists(obj_shop_frog)){
		instance_create_depth(280,600,-999,obj_shop_frog)	
	}
}

if(image_alpha < 1){
	image_alpha += 0.05;	
}