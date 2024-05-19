model = new BBMOD_Model("Panda/Panda.bbmod").freeze()

model.Materials[@ 0] = sprite_get_texture(texture_sushi, 0)

animIdle = new BBMOD_Animation("Panda/Idle.bbanim");
animWalk = new BBMOD_Animation("Panda/Walk.bbanim");

animationPlayer = new BBMOD_AnimationPlayer(model);

zrot = 0
ydir = 0