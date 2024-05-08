var camera = camera_get_active()
camera_set_view_mat(camera, matrix_build_lookat(0,0,100,room_width, room_height, 0,0,0,-1))
camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(60, 4/3, 1, 3200))
camera_apply(camera)