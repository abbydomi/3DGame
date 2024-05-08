
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

var x1 = 100
var y1 = 100
var x2 = room_width
var y2 = room_height

vertex_add_point(vbuffer, x1, y1, 20, 0, 0, 1, 0, 0, c_red, 1)
vertex_add_point(vbuffer, x2, y1, 20, 0, 0, 1, 0, 0, c_blue, 1)
vertex_add_point(vbuffer, x2, y2, 20, 0, 0, 1, 0, 0, c_green, 1)

vertex_end(vbuffer)