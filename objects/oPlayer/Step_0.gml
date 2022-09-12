/// @description Handle movement, collision and animation
key_left = - (keyboard_check(vk_left) || keyboard_check(ord("A")));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_jump_down = keyboard_check(vk_up) || keyboard_check(ord("W"));

// Calculate movement
move = key_left + key_right;
hsp = move * moveSpeed;

vsp += grav;

if (place_meeting(x, y+1, oFloor))
{
	jumps = maxJumps;
}
else if (jumps == maxJumps)
{
	jumps -= 1;
}

if (key_jump) && (jumps > 0)
{
	vsp = -jumpSpeed;
	jumps -= 1;
}

if (vsp < 0) && (!key_jump_down)
{
	vsp = max(vsp, -jumpSpeed/2);
}

// Horizontal Collisions

if (place_meeting(x+hsp, y, oFloor))
{
	while (!place_meeting(x+sign(hsp), y, oFloor))
	{
		x += sign(hsp);
	}
	hsp = 0;	
}

if (place_meeting(x+hsp, y, oMysteryBox))
{
	while (!place_meeting(x+sign(hsp), y, oMysteryBox))
	{
		x += sign(hsp);
	}
	hsp = 0;	
}


x += hsp;

// Vertical Collisions

if (place_meeting(x, y+vsp, oFloor))
{
	while (!place_meeting(x, y+sign(vsp), oFloor))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

// Visualize movement
if (abs(key_left) xor key_right) {
	image_xscale = key_right + key_left;
	image_speed = animationSpeed;
}
else
{
	image_speed = 0;
	image_index = 0;
}

if x < 0 {
	x = 0;
}
else if x > room_width {
	x = room_width
}