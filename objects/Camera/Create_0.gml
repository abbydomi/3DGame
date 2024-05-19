
gpu_set_ztestenable(true)
gpu_set_zwriteenable(true)

vertex_format_begin()
vertex_format_add_position_3d()
vertex_format_add_normal()
vertex_format_add_texcoord()
vertex_format_add_color()
vertexFormat = vertex_format_end()

vbuffer = vertex_create_buffer()
vertex_begin(vbuffer, vertexFormat)

viewMat = undefined
projMat = undefined

/*
var x1 = 100
var y1 = 100
var x2 = 200
var y2 = 200
vertex_add_point(vbuffer, x1, y1, 20, 0, 0, 1, 0, 0, c_red, 1)
vertex_add_point(vbuffer, x2, y1, 20, 0, 0, 1, 0, 0, c_blue, 1)
vertex_add_point(vbuffer, x2, y2, 20, 0, 0, 1, 0, 0, c_green, 1)

vertex_add_point(vbuffer, x1, y1, 20, 0, 0, 1, 0, 0, c_red, 1)
vertex_add_point(vbuffer, x1, y2, 20, 0, 0, 1, 0, 0, c_blue, 1)
vertex_add_point(vbuffer, x2, x2, 20, 0, 0, 1, 0, 0, c_green, 1)
*/

var s = 64
for (var i = 0; i < room_width; i += s) {
	for (var j = 0; j < room_height; j += s) {
		if ((i % (s*2) == 0 && j % (s*2) == 0) || (i % (s*2) > 0 && j % (s*2) > 0)) {
			var color = c_white //c_aqua
		} else {
			var color = c_white
		}
		
		vertex_add_point(vbuffer, i,     j,     0,    0, 0, 1,    0, 0,    color, 1)
		vertex_add_point(vbuffer, i + s, j,     0,    0, 0, 1,    1, 0,    color, 1)
		vertex_add_point(vbuffer, i + s, j + s, 0,    0, 0, 1,    1, 1,    color, 1)
		
		vertex_add_point(vbuffer, i + s, j + s, 0,    0, 0, 1,    1, 1,    color, 1)
		vertex_add_point(vbuffer, i,     j + s, 0,    0, 0, 1,    0, 1,    color, 1)
		vertex_add_point(vbuffer, i,     j,     0,    0, 0, 1,    0, 0,    color, 1)
	}
}

skyboxRot = 0
skybox = import_obj("skybox1.obj", vertexFormat)

vertex_end(vbuffer)