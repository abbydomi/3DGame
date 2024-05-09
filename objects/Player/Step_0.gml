var sensitivity = 3

look_dir += (window_mouse_get_x() - window_get_width() / 2) / sensitivity // <- this number is sensitivity
look_pitch += (window_mouse_get_y() - window_get_height() / 2) / sensitivity
look_pitch = clamp(look_pitch, 10, 90)
look_dir = wrap(look_dir, 0, 360)

window_mouse_set(window_get_width() / 2, window_get_height() / 2) //Mouse locking
window_set_cursor(cr_none)


var moveSpeed = 2

if keyboard_check(vk_up) {
	x -= dcos(look_dir) * moveSpeed
	y += dsin(look_dir) * moveSpeed
	
	zRot = lerp(zRot, wrap(look_dir + 90, 0, 360), 0.5)
}
if keyboard_check(vk_down) {
	x += dcos(look_dir) * moveSpeed
	y -= dsin(look_dir) * moveSpeed
	zRot = lerp(zRot, wrap(look_dir - 90,  0, 360), 0.5)
}
if keyboard_check(vk_left) {
	x -= dsin(look_dir) * moveSpeed
	y -= dcos(look_dir) * moveSpeed
	
	zRot = lerp(zRot, look_dir, 0.5)
}
if keyboard_check(vk_right) {
	x += dsin(look_dir) * moveSpeed
	y += dcos(look_dir) * moveSpeed
	zRot = lerp(zRot, wrap(look_dir + 180, 0, 360), 0.5)
}

if zRot > 360 {
	zRot = 0
} else if zRot < 0 {
	zRot = 360
}



zRot = wrap(zRot, 0, 360)