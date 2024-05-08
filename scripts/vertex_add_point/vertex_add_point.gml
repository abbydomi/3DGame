
function vertex_add_point(vbuffer, _x, _y, _z, normal_x, normal_y, normal_z, tex_u, tex_v, color, alpha) {
	vertex_position_3d(vbuffer, _x, _y, _z)
	vertex_normal(vbuffer, normal_x, normal_y, normal_z)
	vertex_texcoord(vbuffer, tex_u, tex_v)
	vertex_color(vbuffer, color, alpha)
}