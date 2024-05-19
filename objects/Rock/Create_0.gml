vertex_format_begin()
vertex_format_add_position_3d()
vertex_format_add_normal()
vertex_format_add_texcoord()
vertex_format_add_color()
vertexFormat = vertex_format_end()

rock = import_obj("rock_1.obj", vertexFormat)

xrot = 0
yrot = 0
zrot = 0
z = 10