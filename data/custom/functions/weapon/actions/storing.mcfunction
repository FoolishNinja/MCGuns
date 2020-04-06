execute as @a run execute store result score @s magazine run data get entity @s SelectedItem.tag.magazine
execute as @a run execute store result score @s bullets run data get entity @s SelectedItem.tag.bullets
execute as @e[type=item,nbt={Item:{tag:{shootable:1b}}},limit=1] run execute store result score @s temp_bullets run data get entity @s Item.tag.bullets
