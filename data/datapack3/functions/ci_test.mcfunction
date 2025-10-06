say [datapack3] ci_test start
function datapack3:leaderboard/setup

summon minecraft:player ~ ~ ~ {player_name:"Alice"}
summon minecraft:player ~ ~ ~ {player_name:"Bob"}
summon minecraft:player ~ ~ ~ {player_name:"Carol"}

scoreboard players set Alice money 12345
scoreboard players set Bob money 6789
scoreboard players set Carol money 400

function datapack3:leaderboard/update

execute unless score @e[type=minecraft:player,name="Alice",limit=1] lb_board_rank matches 1 run return fail
execute unless score @e[type=minecraft:player,name="Bob",limit=1] lb_board_rank matches 2 run return fail
execute unless score @e[type=minecraft:player,name="Carol",limit=1] lb_board_rank matches 3 run return fail

execute unless score @e[type=minecraft:player,name="Alice",limit=1] lb_money_int matches 123 run return fail
execute unless score @e[type=minecraft:player,name="Alice",limit=1] lb_money_frac_tens matches 4 run return fail
execute unless score @e[type=minecraft:player,name="Alice",limit=1] lb_money_frac_ones matches 5 run return fail

execute unless score @e[type=minecraft:player,name="Bob",limit=1] lb_money_int matches 67 run return fail
execute unless score @e[type=minecraft:player,name="Bob",limit=1] lb_money_frac_tens matches 8 run return fail
execute unless score @e[type=minecraft:player,name="Bob",limit=1] lb_money_frac_ones matches 9 run return fail

execute unless score @e[type=minecraft:player,name="Carol",limit=1] lb_money_int matches 4 run return fail
execute unless score @e[type=minecraft:player,name="Carol",limit=1] lb_money_frac_tens matches 0 run return fail
execute unless score @e[type=minecraft:player,name="Carol",limit=1] lb_money_frac_ones matches 0 run return fail

execute unless data storage datapack3:leaderboard text{extra:[{"text":"Money Leaderboard","color":"gold","bold":true}]} run return fail

kill @e[type=minecraft:player,name="Alice"]
kill @e[type=minecraft:player,name="Bob"]
kill @e[type=minecraft:player,name="Carol"]
kill @e[type=minecraft:text_display,tag=datapack3.leaderboard]

say [datapack3] ci_test done
