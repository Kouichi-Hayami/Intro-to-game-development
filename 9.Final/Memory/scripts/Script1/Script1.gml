function screenshake(_time, _magnitude, _fade)
{
   with (obj_shaker)
   {
      shake = true;
      shake_time = _time;
      shake_magnitude = _magnitude;
      shake_fade = _fade;
   }
}