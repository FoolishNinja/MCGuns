kill @e[type=snowball, distance=..2]
summon fireball ~ ~ ~ {direction:[0.0,-100.0,0.0],ExplosionPower:10,Fuse:0,Time:-1}
effect give @e[type=player, distance=..3] instant_damage 1 10
effect give @e[type=player, distance=..7] instant_damage 1 1


