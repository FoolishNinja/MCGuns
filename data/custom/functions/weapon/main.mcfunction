execute as @a[nbt={SelectedItem:{tag:{shootable:1b}}},scores={click=1,magazine=1..}] at @s positioned ~ ~1.6 ~ positioned ^ ^ ^1 run function custom:weapon/raycast
execute as @a[nbt={SelectedItem:{tag:{shootable:1b}}},scores={click=1,magazine=1..}] at @s run function custom:weapon/decreasemagazine
execute as @a[nbt={SelectedItem:{tag:{shootable:1b}}},scores={click=1,magazine=..1}] run tellraw @s "Magazine empty, press Q to reload"
execute as @a run execute store result score @s magazine run data get entity @s SelectedItem.tag.magazine
execute as @a run execute store result score @s bullets run data get entity @s SelectedItem.tag.bullets
execute as @e[type=item,nbt={Item:{tag:{shootable:1b}}},limit=1] run execute store result score @s temp_bullets run data get entity @s Item.tag.bullets
execute as @e[type=item,nbt={Item:{tag:{shootable:1b}}},limit=1] at @s run function custom:weapon/reload
