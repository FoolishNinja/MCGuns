execute as @a[nbt={SelectedItem:{tag:{shootable:1b}}},scores={click=1,magazine=1..,bullet_cooldown=0,reload_cooldown=-1}] at @s positioned ~ ~1.6 ~ positioned ^ ^ ^1 run function custom:weapon/raycast/raycast
execute as @a[nbt={SelectedItem:{tag:{shootable:1b}}},scores={click=1,magazine=1..,bullet_cooldown=0,reload_cooldown=-1}] at @s run function custom:weapon/actions/decrease_magazine

