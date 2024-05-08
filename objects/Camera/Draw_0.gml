draw_clear(c_black)

var camera = camera_get_active()
var camDistance = 100;

var xto = Player.x
var yto = Player.y
var zto = Player.z
var xfrom = xto + dcos(Player.look_dir) * camDistance
var yfrom = yto - dsin(Player.look_dir) * camDistance
var zfrom = zto + dsin(Player.look_pitch) * camDistance

camera_set_view_mat(camera, matrix_build_lookat(xfrom, yfrom, zfrom, xto, yto, zto, 0, 0, -1))
camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(60, 4/3, 1, 320000))
camera_apply(camera)

vertex_submit(vbuffer, pr_trianglelist, sprite_get_texture(grass_03, 0))

