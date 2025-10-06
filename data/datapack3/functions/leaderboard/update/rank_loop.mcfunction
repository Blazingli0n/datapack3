execute if score #rank lb_state > #limit lb_state run return
execute unless entity @a[scores={lb_board_rank=0}] run return

scoreboard players set #best_score lb_state -2147483648
scoreboard players set @a[scores={lb_board_rank=0}] lb_board_best 0

execute as @a[scores={lb_board_rank=0}] run function datapack3:leaderboard/update/rank_select_best

scoreboard players operation @a[scores={lb_board_best=1}] lb_board_rank = #rank lb_state
scoreboard players set @a[scores={lb_board_best=1}] lb_board_best 0
scoreboard players add #rank lb_state 1
function datapack3:leaderboard/update/rank_loop
