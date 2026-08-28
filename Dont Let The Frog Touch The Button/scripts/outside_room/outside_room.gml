function outside_room(obj,dir){
	switch (dir){
		case DIRECTIONS.DOWN: return [irandom(room_width),room_height+sprite_get_height(obj.sprite_index)]; 
		case DIRECTIONS.UP: return [irandom(room_width),-sprite_get_height(obj.sprite_index)]; 
		case DIRECTIONS.RIGHT: return [room_width + sprite_get_width(obj.sprite_index),irandom(room_height)]; 
		case DIRECTIONS.LEFT: return [-sprite_get_width(obj.sprite_index),irandom(room_height)]; 
	}


}