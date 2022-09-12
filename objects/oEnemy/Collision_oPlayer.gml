xt = oPlayer.x
yt = oPlayer.y
instance_destroy(oPlayer.id)
instance_create_layer(xt, yt, "Monsters", oDead);