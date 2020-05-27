tag @s add bingo_got_item
execute as @e[tag=bingo_chest_minecart, scores={bingo_slot_id=0..}, limit=1] run function bingo:award_item

execute if entity @s[tag=bingo_successful_got_item] run tellraw @a {"translate": "bingo.got_item", "with": [{"selector": "@s"}, {"translate": "item.minecraft.chest_minecart", "hoverEvent": {"action": "show_item", "contents": {"id": "minecraft:chest_minecart"}}}]}

tag @s remove bingo_got_item
tag @s remove bingo_successful_got_item