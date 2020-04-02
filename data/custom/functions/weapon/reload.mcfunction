execute store result score @s temp run data get entity @s Item.tag.magazineSize
execute store result score @s temp1 run data get entity @s Item.tag.bullets
scoreboard players operation @s temp1 -= @s temp
execute unless entity @s[scores={temp_bullets=..1}] store result entity @s Item.tag.bullets int 1 run scoreboard players get @s temp1
execute unless entity @s[scores={temp_bullets=..1}] run data modify entity @s Item.tag.magazine set from entity @s Item.tag.magazineSize
loot replace entity @p[sort=nearest,limit=1] weapon.mainhand loot minecraft:entities/shulker
execute if entity @s[scores={temp_bullets=..1}] run tellraw @p[sort=nearest,limit=1] "You're out of bullets to reload."
kill @s
