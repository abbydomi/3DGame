xrot += 0.5
yrot += 0.25
zrot += 0.1

matrix_set(matrix_world, matrix_build(x, y, 0, xrot, yrot, zrot, 32, 32, 32))

vertex_submit(rock, pr_trianglelist, sprite_get_texture(rock1, 0))

matrix_set(matrix_world, matrix_build_identity())