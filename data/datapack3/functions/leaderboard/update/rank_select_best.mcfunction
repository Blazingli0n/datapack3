execute if score @s money > #best_score lb_state run scoreboard players set @a[scores={lb_board_rank=0}] lb_board_best 0
execute if score @s money > #best_score lb_state run scoreboard players operation #best_score lb_state = @s money
execute if score @s money > #best_score lb_state run scoreboard players set @s lb_board_best 1
execute if score @s money = #best_score lb_state run scoreboard players set @s lb_board_best 1
