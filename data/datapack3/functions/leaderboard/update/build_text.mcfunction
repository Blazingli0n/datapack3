data modify storage datapack3:leaderboard text set value {"text":"","extra":[]}
data modify storage datapack3:leaderboard text.extra append value {"text":"Money Leaderboard","color":"gold","bold":true}

execute as @a[scores={lb_board_rank=1}] run function datapack3:leaderboard/update/build_text/append_line
execute as @a[scores={lb_board_rank=2}] run function datapack3:leaderboard/update/build_text/append_line
execute as @a[scores={lb_board_rank=3}] run function datapack3:leaderboard/update/build_text/append_line
execute as @a[scores={lb_board_rank=4}] run function datapack3:leaderboard/update/build_text/append_line
execute as @a[scores={lb_board_rank=5}] run function datapack3:leaderboard/update/build_text/append_line
execute as @a[scores={lb_board_rank=6}] run function datapack3:leaderboard/update/build_text/append_line
execute as @a[scores={lb_board_rank=7}] run function datapack3:leaderboard/update/build_text/append_line
execute as @a[scores={lb_board_rank=8}] run function datapack3:leaderboard/update/build_text/append_line
execute as @a[scores={lb_board_rank=9}] run function datapack3:leaderboard/update/build_text/append_line
execute as @a[scores={lb_board_rank=10}] run function datapack3:leaderboard/update/build_text/append_line
