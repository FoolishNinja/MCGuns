##Damage
execute as @e[type=player,sort=nearest,limit=1] at @s positioned ^-0.1 ^ ^ run summon arrow ~ ~3 ~ {Motion:[0.0,-10.0,0.0]}
data modify entity @e[type=arrow,sort=nearest,limit=1] damage set from storage minecraft:didhit damage

##Kill feed
#execute as @e[type=minecraft:player,sort=nearest,limit=1] store result score @s health run data get entity @s Health
#execute store result score @e[type=minecraft:player,sort=nearest,limit=1] dmg run data get storage minecraft:didhit damage
#scoreboard players operation @e[type=minecraft:player,sort=nearest,limit=1] dmg *= @e[type=minecraft:player] ten
#scoreboard players operation @e[type=player] health -= @e[type=minecraft:player] dmg