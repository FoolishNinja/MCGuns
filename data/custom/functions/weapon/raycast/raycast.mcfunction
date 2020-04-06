particle smoke ~ ~ ~ 0 0 0 0 1 normal
execute positioned ^ ^ ^0.4 positioned ~ ~-1.58 ~ if entity @e[distance=..0.5] run data modify storage didhit damage set from entity @s SelectedItem.tag.damage.head
execute positioned ^ ^ ^0.4 positioned ~ ~-1.1 ~ if entity @e[distance=..0.5] run data modify storage didhit damage set from entity @s SelectedItem.tag.damage.body
execute positioned ^ ^ ^0.4 positioned ~ ~-0.5 ~ if entity @e[distance=..0.4] run data modify storage didhit damage set from entity @s SelectedItem.tag.damage.legs
execute positioned ^ ^ ^0.4 positioned ~ ~-0.5 ~ 
execute if data storage minecraft:didhit damage run function custom:weapon/actions/weapon_damage
execute unless data storage minecraft:didhit damage positioned ^ ^ ^0.4 if block ~ ~ ~ #minecraft:penetratable run function custom:weapon/raycast/raycast
