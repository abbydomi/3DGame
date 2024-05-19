draw_text(8,8,"abbytorade")

if !instance_exists(bbtest) { exit }

var screenPos = worldToScreen(bbtest.x, bbtest.y, bbtest.ydir + 200, viewMat, projMat)
draw_sprite_ext(art_weird_01, 0, screenPos[0], screenPos[1], 0.25, 0.25, 0, c_white, 1)

with Rock {
	screenPos = worldToScreen(x, y, z, other.viewMat, other.projMat)
	draw_text(screenPos[0], screenPos[1],"rock....")
}