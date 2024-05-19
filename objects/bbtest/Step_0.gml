ydir++
ydir = wrap(ydir, 0, 50)
var _anim = keyboard_check(ord("W")) ? animWalk : animIdle;
animationPlayer.change(_anim, true); // true = loop the animation
animationPlayer.update(delta_time);