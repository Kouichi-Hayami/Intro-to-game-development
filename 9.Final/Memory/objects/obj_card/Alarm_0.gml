with (global.match[0,1])
{
	flipped = false;
	screenshake(3, 5, 0.2);
	
}
				
with (global.match[1,1])
{
	flipped = false;
	screenshake(3, 5, 0.2);
}


global.selectionNumber = 0; 

global.match[0, 0] = "null";
global.match[0, 1] = "999";
global.match[1,  0] = "null";
global.match[1, 1] = "999";
				
global.can_select = true;
