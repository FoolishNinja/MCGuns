execute store result score @s temp run data get entity @s SelectedItem.tag.magazine
scoreboard players remove @s temp 1
summon item ~ ~2 ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1] Item.tag merge from entity @s SelectedItem.tag
data modify entity @e[type=item,sort=nearest,limit=1] item.tag.magazine
execute store result entity @e[type=item,sort=nearest,limit=1] Item.tag.magazine int 1 run scoreboard players get @s temp
execute as @e[type=item,limit=1,sort=nearest] at @s run loot replace entity @p weapon.mainhand loot minecraft:entities/shulker
kill @e[type=item,limit=1,sort=nearest]