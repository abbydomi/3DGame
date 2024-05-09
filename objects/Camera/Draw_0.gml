draw_clear(c_black)

var camera = camera_get_active()
var camDistance = 200;

var xto = Player.x
var yto = Player.y
var zto = Player.z
var xfrom = xto + dcos(Player.look_dir) * camDistance
var yfrom = yto - dsin(Player.look_dir) * camDistance
var zfrom = zto + dsin(Player.look_pitch) * camDistance

camera_set_view_mat(camera, matrix_build_lookat(xfrom, yfrom, zfrom, xto, yto, zto, 0, 0, -1))
camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(60, 1 / 1, 1, 32000))
camera_apply(camera)




gpu_set_zwriteenable(false)
skyboxRot++
matrix_set(matrix_world, matrix_build(xfrom, yfrom, zfrom, 0, 0, skyboxRot, 1, 1, 1))
vertex_submit(skybox, pr_trianglelist, sprite_get_texture(skybox1, 0))
matrix_set(matrix_world, matrix_build_identity())
gpu_set_zwriteenable(true)

vertex_submit(vbuffer, pr_trianglelist, sprite_get_texture(grass_03, 0))