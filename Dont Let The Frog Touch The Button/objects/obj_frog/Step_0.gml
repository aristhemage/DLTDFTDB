if(obj_master.gamestate == GAMESTATES.PLAYING){
	// Determine nearest button
	var button = instance_nearest(x,y,obj_button);
	mask_index = spr_frog_mask;
	//TODO: Add distractions
	target = button;
	// Make a new choice
	if (make_new_choice) {
		image_index = 0;
		image_speed = 0;
		if(choice_delay <= 0){
		    // Pick direction when starting a new action
		    move_dir = point_direction(x, y, target.x, target.y);

		    var angle = floor((move_dir + 22.5) / 45) mod 8;

		    sprite_croak = [
		        spr_frog_croak_right,
		        spr_frog_croak_up_right,
		        spr_frog_croak_up,
		        spr_frog_croak_up_left,
		        spr_frog_croak_left,
		        spr_frog_croak_down_left,
		        spr_frog_croak_down,
		        spr_frog_croak_down_right
		    ][angle];

		    sprite_jump_big = [
		        spr_frog_jump_big_right,
		        spr_frog_jump_big_up_right,
		        spr_frog_jump_big_up,
		        spr_frog_jump_big_up_left,
		        spr_frog_jump_big_left,
		        spr_frog_jump_big_down_left,
		        spr_frog_jump_big_down,
		        spr_frog_jump_big_down_right
		    ][angle];

		    sprite_jump_small = [
		        spr_frog_jump_small_right,
		        spr_frog_jump_small_up_right,
		        spr_frog_jump_small_up,
		        spr_frog_jump_small_up_left,
		        spr_frog_jump_small_left,
		        spr_frog_jump_small_down_left,
		        spr_frog_jump_small_down,
		        spr_frog_jump_small_down_right
		    ][angle];


		    image_speed = 1;
		    image_index = 0;

		    if (distance_to_object(obj_button) > 300) {
		        choice = CHOICES.BIG_JUMP;

		    } else {
		        if (irandom(100)-obj_master.level[SHOP.MORE_CROAK]*3.5 > 50) {
		            choice = CHOICES.SMALL_JUMP;
		            image_speed = 0.5;
		        } else {
		            choice = CHOICES.CROAK;
		            image_speed = 0.4;
		        }
		    }

		    make_new_choice = false;
			choice_delay = irandom_range(10,30+obj_master.level[SHOP.MORE_CHOICE]*5);
		}else{
			choice_delay--;	
		}
	}


	// Perform the chosen action
	else {
	    switch (choice) {

	        case CHOICES.BIG_JUMP:
	            sprite_index = sprite_jump_big;

	            if (image_index >= 4 && big_jump_timer > 0) {
	                image_index = 4;
	                image_speed = 0;

	                big_jump_timer--;

	                x += lengthdir_x(4, move_dir);
	                y += lengthdir_y(4, move_dir);
	            }

	            if (big_jump_timer <= 0) {
	                image_speed = 1;
	            }

	            if (animation_end()) {
	                make_new_choice = true;
	                big_jump_timer = irandom_range(30, 60-obj_master.level[SHOP.SMALLER_SMALL_JUMP]*2);
	            }
	        break;


	        case CHOICES.SMALL_JUMP:
	            sprite_index = sprite_jump_small;

	            if (image_index >= 2 && small_jump_timer > 0) {
	                image_index = 2;
	                image_speed = 0;

	                small_jump_timer--;

	                x += lengthdir_x(4, move_dir);
	                y += lengthdir_y(4, move_dir);
	            }

	            if (small_jump_timer <= 0) {
	                image_speed = 0.5;
	            }

	            if (animation_end()) {
	                make_new_choice = true;
	                small_jump_timer = irandom_range(15, 30-obj_master.level[SHOP.SMALLER_SMALL_JUMP]*2);
	            }
	        break;


	        case CHOICES.CROAK:

	            // Update direction LIVE while croaking
	            var croak_dir = point_direction(x, y, target.x, target.y);
	            croak_angle = floor((croak_dir + 22.5) / 45) mod 8;

	            sprite_index = [
	                spr_frog_croak_right,
	                spr_frog_croak_up_right,
	                spr_frog_croak_up,
	                spr_frog_croak_up_left,
	                spr_frog_croak_left,
	                spr_frog_croak_down_left,
	                spr_frog_croak_down,
	                spr_frog_croak_down_right
	            ][croak_angle];

	            if (animation_end()) {
	                make_new_choice = true;
	            }
	        break;
	    }
	}

	depth = -y;
}else{
	image_speed = 1;
	sprite_index = [
		spr_frog_croak_right,
		spr_frog_croak_up_right,
		spr_frog_croak_up,
		spr_frog_croak_up_left,
		spr_frog_croak_left,
		spr_frog_croak_down_left,
		spr_frog_croak_down,
		spr_frog_croak_down_right
	][croak_angle];
}