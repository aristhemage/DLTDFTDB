draw_set_font(fnt_game);
draw_set_halign(fa_left);
draw_set_colour(c_white);
switch(shop_id){
	case SHOP.LESS_FROGS:
		big_text = "Frogs show up less often!";
		small_text = "Keep those pesky frogs away from your buttons"
		cost = obj_master.level[SHOP.LESS_FROGS] * 2 + 15;
	break;
	
	case SHOP.LESS_BUTTONS:
		big_text = "Buttons show up less often!";
		small_text = "Less buttons to keep track of!"
		cost = obj_master.level[SHOP.LESS_BUTTONS] * 2 + 10;
	break;
	
	case SHOP.MORE_CHOICE:
		big_text = "Frogs take longer to make a new choice!";
		small_text = "Keep them dumb!"
		cost = obj_master.level[SHOP.MORE_CHOICE] * 2 + 8;
	break;
	
	case SHOP.MORE_CROAK:
		big_text = "Frogs croak more often!";
		small_text = "Can't chase if they chat!"
		cost = obj_master.level[SHOP.MORE_CROAK] * 2 + 20;
	break;
	
	case SHOP.SMALLER_BIG_JUMP:
		big_text = "Frogs do smaller big jumps!";
		small_text = "Are you breaking their legs? Who knows?"
		cost = obj_master.level[SHOP.SMALLER_BIG_JUMP] * 2 + 10;
	break;
	
	case SHOP.SMALLER_SMALL_JUMP:
		big_text = "Frogs do smaller small jumps!";
		small_text = "Smally small smally small?"
		cost = obj_master.level[SHOP.SMALLER_SMALL_JUMP] * 2 + 7;
	break;
}

if(obj_master.level[shop_id] >= 10){
	small_text = "Maxed out!"
	cost = 9999;
}
if(obj_master.cash >= cost)
	draw_self();
else
	draw_sprite_ext(spr_buy_button,image_index,x,y,1,1,0,c_white,0.5);

draw_text_transformed(x+64,y-40,big_text,0.5,0.5,0);
draw_text_transformed(x+64,y-10,small_text,0.4,0.4,0);

if(obj_master.level[shop_id] < 10){
	draw_text_transformed(x+64,y+16,"$" +string(cost) + "    Level: " + string(obj_master.level[shop_id]),0.4,0.4,0);
}