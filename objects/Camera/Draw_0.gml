var camera = camera_get_active()
camera_set_view_mat(camera, matrix_build_lookat(-200, -200, 100, room_width, room_height, 0, 0, 0, -1))
camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(60, 4/3, 1, 320000))
camera_apply(camera)

vertex_submit(vbuffer, pr_trianglelist, sprite_get_texture(grass_03, 0))

