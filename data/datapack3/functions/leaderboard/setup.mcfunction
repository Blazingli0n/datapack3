scoreboard objectives add money dummy {"text":"Money (¢)"}
scoreboard objectives add lb_money_int dummy
scoreboard objectives add lb_money_frac dummy
scoreboard objectives add lb_money_frac_tens dummy
scoreboard objectives add lb_money_frac_ones dummy
scoreboard objectives add lb_board_rank dummy
scoreboard objectives add lb_board_best dummy
scoreboard objectives add lb_state dummy
scoreboard objectives add lb_const dummy

data modify storage datapack3:leaderboard initialized set value 1b

data modify storage datapack3:leaderboard text set value {"text":"","extra":[]}

scoreboard players set #hundred lb_const 100
scoreboard players set #ten lb_const 10
scoreboard players set #limit lb_state 10
scoreboard players set #best_score lb_state -2147483648
scoreboard players set #rank lb_state 0
