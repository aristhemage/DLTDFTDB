if(obj_master.cash >= cost && obj_master.level[shop_id] < 10){
	obj_master.cash -= cost;
	obj_master.level[shop_id]++;
}