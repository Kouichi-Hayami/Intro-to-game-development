if (!keyboard_check(vk_shift))
{
	image_alpha -= 0.3;
	if (image_alpha < 0){
		instance_destroy();
	
	}
}
