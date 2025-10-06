function datapack3:leaderboard/update/prepare_scores
function datapack3:leaderboard/update/rank
function datapack3:leaderboard/update/build_text
execute as @e[type=minecraft:text_display,tag=datapack3.leaderboard] run data modify entity @s text set from storage datapack3:leaderboard text
