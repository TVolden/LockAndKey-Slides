if (oPlayer.y > y and oPlayer.x < (x+64) and oPlayer.x > x and !run)
{
	y -= 1;
	instance_create_layer(x, y-32, "Coin", oReward);
	t = 0;
	run = true;
}
