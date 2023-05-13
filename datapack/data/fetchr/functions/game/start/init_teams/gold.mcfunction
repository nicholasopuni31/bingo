#> fetchr:game/start/init_teams/gold
#
# Initializes the gold team
#
# @within function fetchr:game/start/init_teams

data modify block 7 0 7 front_text.messages[0] set value '[{"storage": "tmp.fetchr:game/start", "nbt": "backgroundTemplate[0]", "interpret": true, "color": "gold"}, {"text": "\\uffeb", "font": "fetchr:space"}]'
data modify storage fetchr:card teams[{id: "fetchr:gold"}].background set from block 7 0 7 front_text.messages[0]
data modify block 7 0 7 front_text.messages[0] set value '[{"storage": "tmp.fetchr:game/start", "nbt": "backgroundTemplate[0]", "interpret": true, "color": "#8b8b8b"}, {"text": "\\uffeb", "font": "fetchr:space"}]'
data modify storage tmp.fetchr:game/start defaultBackground append from block 7 0 7 front_text.messages[0]

data remove storage tmp.fetchr:game/start backgroundTemplate[0]