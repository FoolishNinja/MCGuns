execute as @a[nbt={SelectedItem:{tag:{shootable:1b}}},scores={click=1,magazine=..1}] run tellraw @s "Magazine empty, press Q to reload"
execute as @a[nbt={SelectedItem:{tag:{shootable:1b}}}] unless entity @s[scores={reload_cooldown=0..}] run title @s actionbar [{"nbt":"SelectedItem.tag.display.Name","entity":"@s","color":"dark_green","interpret":true},{"text":" : ","bold":true,"color":"dark_red"},{"score":{"name":"@s","objective":"magazine"},"bold":true,"color":"dark_blue"},{"text":" / ","bold":true,"color":"dark_red"},{"nbt":"SelectedItem.tag.bullets","entity":"@s","bold":true,"color":"dark_blue"}]
execute as @a[nbt={SelectedItem:{tag:{shootable:1b}}}] if entity @s[scores={reload_cooldown=0..}] run title @s actionbar {"text":"Reloading...","bold":true,"color":"dark_blue"}