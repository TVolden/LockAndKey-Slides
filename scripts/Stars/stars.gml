function Stars(){
	ypos = random(room_height-128);
	if (int64(random(2)) == 1)
	{
		instance_create_layer(room_width, ypos, "Instances", oStarSmall);
	}
	else 
	{
		instance_create_layer(room_width, ypos, "Instances", oStarLarge);
	}
}