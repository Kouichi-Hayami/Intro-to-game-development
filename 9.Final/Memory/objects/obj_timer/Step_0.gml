if (myTime > 0)
{
	myTime = myTime - delta_time/1000000; 
}
else myTime = 0;

showTime = ceil(myTime);

if (myTime == 0)
{
	room_goto(3);
}


