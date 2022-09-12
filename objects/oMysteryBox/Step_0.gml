if (run)
{
	t += 1;
	if (t > T)
		run = false;
	
	s = t / T;
	y = s * yOrg + (1-s) * bounce_top;
}