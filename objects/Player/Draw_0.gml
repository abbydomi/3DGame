
matrix_set(matrix_world, matrix_build(x, y, z, 0, 0, zRot, 16, 16, 16))

vertex_submit(witchBuffer, pr_trianglelist, sprite_get_texture(witch, 0))

matrix_set(matrix_world, matrix_build_identity())