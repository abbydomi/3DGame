function import_obj(filename, vertex_format) {
	var buffer = buffer_load(filename)
	
	var contentString = buffer_read(buffer, buffer_text)
	buffer_delete(buffer)
	
	var lines = string_split(contentString, "\n")
	
	var vertexBuffer = vertex_create_buffer()
	vertex_begin(vertexBuffer, vertex_format)
	
	var positions = []
	var texcoords = []
	var normals = []
	
	for (var i = 0; i < array_length(lines); i++) {
		var currentLine = lines[i]
		
		if currentLine == "" {
			continue
		}
		
		var tokens = string_split(currentLine, " ")
		switch tokens[0] {
			case "v":
				var vx = real(tokens[1])
				var vy = real(tokens[2])
				var vz = real(tokens[3])
				array_push(positions, {
					x: vx, y: vz, z: vy
				})
				break
			case "vt":
				var tx = real(tokens[1])
				var ty = real(tokens[2])
				array_push(texcoords, {
					x: tx, y: 1 - ty
				})
				break
			case "vn":
				var nx = real(tokens[1])
				var ny = real(tokens[2])
				var nz = real(tokens[3])
				array_push(normals, {
					x: nx, y: nz, z: ny
				})
				break
			case "f":
				var v1 = tokens[1]
				var v2 = tokens[2]
				var v3 = tokens[3]
				
				var v1_tokens = string_split(v1, "/")
				var v2_tokens = string_split(v2, "/")
				var v3_tokens = string_split(v3, "/")
				
				var v1_position = positions[real(v1_tokens[0]) - 1]
				var v1_texcoord = texcoords[real(v1_tokens[1]) - 1]
				var v1_normal   = normals[real(v1_tokens[2]) - 1]
				var v2_position = positions[real(v2_tokens[0]) - 1]
				var v2_texcoord = texcoords[real(v2_tokens[1]) - 1]
				var v2_normal   = normals[real(v2_tokens[2]) - 1]
				var v3_position = positions[real(v3_tokens[0]) - 1]
				var v3_texcoord = texcoords[real(v3_tokens[1]) -1]
				var v3_normal   = normals[real(v3_tokens[2]) -1]
				
				
				vertex_position_3d(vertexBuffer, v1_position.x, v1_position.y, v1_position.z)
				vertex_normal(vertexBuffer, v1_normal.x, v1_normal.y, v1_normal.z)
				vertex_texcoord(vertexBuffer, v1_texcoord.x, v1_texcoord.y)
				vertex_color(vertexBuffer, c_white, 1)
				
				vertex_position_3d(vertexBuffer, v2_position.x, v2_position.y, v2_position.z)
				vertex_normal(vertexBuffer, v2_normal.x, v2_normal.y, v2_normal.z)
				vertex_texcoord(vertexBuffer, v2_texcoord.x, v2_texcoord.y)
				vertex_color(vertexBuffer, c_white, 1)
				
				vertex_position_3d(vertexBuffer, v3_position.x, v3_position.y, v3_position.z)
				vertex_normal(vertexBuffer, v3_normal.x, v3_normal.y, v3_normal.z)
				vertex_texcoord(vertexBuffer, v3_texcoord.x, v3_texcoord.y)
				vertex_color(vertexBuffer, c_white, 1)
				
				break
		}
	}
	
	vertex_end(vertexBuffer)
	vertex_freeze(vertexBuffer)
	return vertexBuffer
}