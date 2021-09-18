#> bingo:custom_hud/components/player_position/update_y
#
# Updates the component for the y position
#
# @within function bingo:custom_hud/components/player_position/update
# @context entity Player whose hud is currently being updated

data modify storage tmp.bingo:custom_hud component set value {textComponent:'["Y: ", {"storage": "bingo:custom_hud", "nbt": "params.bingo.player_position.y"}]', changed: true}
execute at @s run function bingo:game/emerald_detection/chunk/detect
execute if entity @s[tag=bingo.emerald] run data modify storage tmp.bingo:custom_hud component.textComponent set value '["Y: ", {"storage": "bingo:custom_hud", "nbt": "params.bingo.player_position.y", "color": "green"}]'
execute store result storage bingo:custom_hud params.bingo.player_position.y int 1 run scoreboard players get $custom_hud/player_pos.y bingo.tmp

scoreboard players set $custom_hud/width.padding bingo.io 79
scoreboard players operation $custom_hud/width.number bingo.io = $custom_hud/player_pos.y bingo.tmp
function bingo:custom_hud/subtract_width
function bingo:custom_hud/calculate_padding
data modify storage tmp.bingo:custom_hud component.padding set from storage io.bingo:custom_hud/padding padding
data modify storage bingo:custom_hud currentPlayer.components[{id: "bingo:y_position"}] merge from storage tmp.bingo:custom_hud component