all: plot

plot: 8bars.gp board start end xy

board:
	gnuplot -c 8bars.gp "board-X with line and time restrictions" board_old.csv board_new.csv 0 > board.eps
	gnuplot -c 4bars.gp "board-X with T-Matrix variants" board_t.csv > board_t.eps

start:
	gnuplot -c 8bars.gp "start-X with line and time restrictions" start_old.csv start_new.csv 0 > start.eps

end:
	gnuplot -c 8bars.gp "end-X with line and time restrictions" end_old.csv end_new.csv 0 > end.eps

xy:
	gnuplot -c 8bars.gp "from-X-to-Y with start and end line restrictions" xy_old.csv xy_new.csv 0 > xy0.eps
	gnuplot -c 8bars.gp "from-X-to-Y with start time restrictions" xy_old.csv xy_new.csv 4 > xy1.eps
	gnuplot -c 8bars.gp "from-X-to-Y with end time restrictions" xy_old.csv xy_new.csv 8 > xy2.eps
	gnuplot -c 8bars.gp "from-X-to-Y with start and end time restrictions" xy_old.csv xy_new.csv 12 > xy3.eps
