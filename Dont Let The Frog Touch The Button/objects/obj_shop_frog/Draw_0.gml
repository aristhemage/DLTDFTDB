draw_self();
draw_set_colour(c_black);
draw_sprite_ext(spr_speech_bubble,0,x+160,y-350,2.1,1.5,0,c_white,alpha)
draw_set_alpha(alpha);
draw_text(x+315,y-400,txt);
draw_set_alpha(1);
