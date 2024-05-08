draw_clear(c_black)

var camera = camera_get_active()

var xfrom = Player.x
var yfrom = Player.y 
var zfrom = Player.z
var xto = xfrom - dcos(Player.look_dir)
var yto = yfrom + dsin(Player.look_dir)

var zto = zfrom - dsin(Player.look_pitch)

camera_set_view_mat(camera, matrix_build_lookat(xfrom, yfrom, zfrom, xto, yto, zto, 0, 0, -1))
camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(60, 4/3, 1, 320000))
camera_apply(camera)

vertex_submit(vbuffer, pr_trianglelist, sprite_get_texture(grass_03, 0))

