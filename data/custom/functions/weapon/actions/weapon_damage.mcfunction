execute as @e[sort=nearest,limit=1] at @s positioned ^-0.1 ^ ^ run summon arrow ~ ~3 ~ {Motion:[0.0,-10.0,0.0]}
data modify entity @e[type=arrow,sort=nearest,limit=1] damage set from storage minecraft:didhit damage
data remove storage minecraft:didhit damage