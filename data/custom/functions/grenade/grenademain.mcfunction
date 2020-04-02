execute as @e[nbt={Item:{tag:{id:"grenade"}}}] at @s run execute unless block ~ ~ ~1 #minecraft:penetratable positioned ~ ~-2 ~ run function custom:grenade/grenadeexplosion
execute as @e[nbt={Item:{tag:{id:"grenade"}}}] at @s run execute unless block ~ ~ ~-1 #minecraft:penetratable positioned ~ ~-2 ~ run function custom:grenade/grenadeexplosion
execute as @e[nbt={Item:{tag:{id:"grenade"}}}] at @s run execute unless block ~ ~1 ~ #minecraft:penetratable positioned ~ ~-2 ~ run function custom:grenade/grenadeexplosion
execute as @e[nbt={Item:{tag:{id:"grenade"}}}] at @s run execute unless block ~ ~-1 ~ #minecraft:penetratable positioned ~ ~-2 ~ run function custom:grenade/grenadeexplosion
execute as @e[nbt={Item:{tag:{id:"grenade"}}}] at @s run execute unless block ~1 ~ ~ #minecraft:penetratable positioned ~ ~-2 ~ run function custom:grenade/grenadeexplosion
execute as @e[nbt={Item:{tag:{id:"grenade"}}}] at @s run execute unless block ~-1 ~ ~ #minecraft:penetratable positioned ~ ~-2 ~ run function custom:grenade/grenadeexplosion
