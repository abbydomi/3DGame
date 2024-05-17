matrix_set(matrix_world, matrix_build(200, 200, 0, 0, 0, 0, 16, 16, 16))

shader_set(animshader);	// Set active shader to bone shader
shader_set_uniform_matrix_array(u_bonetransforms, animator.OutputPose());	// Sets uniform for shader

vbm.Submit();	// Draw Model

shader_reset();	// Reset to Native GM shader

matrix_set(matrix_world, matrix_build_identity())