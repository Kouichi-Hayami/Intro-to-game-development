global.selectionNumber = 0; 

global.match[0, 0] = "null";
global.match[0, 1] = "999";
global.match[1, 0] = "null";
global.match[1, 1] = "999";

global.can_select = true;
global.flipAttempts = 0;
global.flipCount = 0;

width = 8;
height = 3;

appleCount = 0;
catCount = 0;
cherryCount = 0;
clamCount = 0;
eggplantCount = 0;
orangeCount = 0;

xx = 75;
yy = 120; 

found = false;

randomize();
r = irandom(5); 

for (var i = 0; i < width; i ++ )
{
	for (var j = 0; j < height; j ++)
	{
		var card = instance_create_layer(xx, yy, "Instances", obj_card);
		
		while (found == false)
		{
			switch(r)
			{
				case 0:
					if (appleCount < 4)
					{
						card.type = "apple";
						found = true;
						appleCount ++;
					}
					else
					{
						randomize();
						r = irandom(5);
						found = false;
					}
				break;
				
				case 1:
					if (catCount < 4)
					{
						card.type = "cat";
						found = true;
						catCount ++;
					}
					else
					{
						randomize();
						r = irandom(5);
						found = false;
					}
				break;
				
				case 2:
					if (cherryCount < 4)
					{
						card.type = "cherry";
						found = true;
						cherryCount ++;
					}
					else
					{
						randomize();
						r = irandom(5);
						found = false;
					}
				break;
				
				case 3:
					if (clamCount < 4)
					{
						card.type = "clam";
						found = true;
						clamCount ++;
					}
					else
					{
						randomize();
						r = irandom(5);
						found = false;
					}
				break;
				
				case 4:
					if (eggplantCount < 4)
					{
						card.type = "eggplant";
						found = true;
						eggplantCount ++;
					}
					else
					{
						randomize();
						r = irandom(5);
						found = false;
					}
				break;
				
				case 5:
					if (orangeCount < 4)
					{
						card.type = "orange";
						found = true;
						orangeCount ++;
					}
					else
					{
						randomize();
						r = irandom(5);
						found = false;
					}
				break;
				
			}		
		}
		randomize();
		r = irandom(5);
		found = false;
		yy += 220;
	}
	
	xx += 160;
	yy = 120;
}
