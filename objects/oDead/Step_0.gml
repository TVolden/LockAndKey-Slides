t += 1
if (t>T)
	room_restart()
s = t / T;
s = s*s*s;
y = s * yDest + (1-s) * yOrg;