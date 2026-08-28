make_new_choice = true;
target = obj_button;
choice = CHOICES.CROAK;
move_dir = 0;

big_jump_timer = irandom_range(30,60); 
small_jump_timer = irandom_range(15,30); 

enum CHOICES {
	BIG_JUMP,
	SMALL_JUMP,
	CROAK
}

enum DIRECTIONS {
	UP,
	UP_RIGHT,
	RIGHT,
	DOWN_RIGHT,
	DOWN,
	DOWN_LEFT,
	LEFT,
	UP_LEFT
}