vbm = OpenVBM("treat2.vbm")
animator = vbm.CreateAnimator()
animator.PlayAnimation("walk")

u_bonetransforms = shader_get_uniform(animshader, "u_bonetransforms");
