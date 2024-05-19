
zrot++
matrix_set(matrix_world, matrix_build(x, y, ydir, 0, 0, zrot, 32, 32, 32))

model.submit()
shader_set(ShAnimated);
animationPlayer.submit();
shader_reset();

matrix_set(matrix_world, matrix_build_identity())

