execute as @a run scoreboard players add @s money 0
execute as @a run scoreboard players set @s lb_board_rank 0
execute as @a run scoreboard players set @s lb_board_best 0
execute as @a run scoreboard players set @s lb_money_int 0
execute as @a run scoreboard players set @s lb_money_frac 0
execute as @a run scoreboard players set @s lb_money_frac_tens 0
execute as @a run scoreboard players set @s lb_money_frac_ones 0

execute as @a run scoreboard players operation @s lb_money_int = @s money
execute as @a run scoreboard players operation @s lb_money_frac = @s money
execute as @a run scoreboard players operation @s lb_money_int /= #hundred lb_const
execute as @a run scoreboard players operation @s lb_money_frac %= #hundred lb_const
execute as @a run scoreboard players operation @s lb_money_frac_tens = @s lb_money_frac
execute as @a run scoreboard players operation @s lb_money_frac_tens /= #ten lb_const
execute as @a run scoreboard players operation @s lb_money_frac_ones = @s lb_money_frac
execute as @a run scoreboard players operation @s lb_money_frac_ones %= #ten lb_const
