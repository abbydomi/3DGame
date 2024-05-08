z = 0
look_dir = 0
look_pitch = 0

vertex_format_begin()
vertex_format_add_position_3d()
vertex_format_add_normal()
vertex_format_add_texcoord()
vertex_format_add_color()
vertexFormat = vertex_format_end()

witchBuffer = import_obj("witch.obj", vertexFormat)

