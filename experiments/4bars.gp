#set size 1.25,1
#set terminal postscript eps enhanced
set terminal epscairo size 5,4 font 'Helvetica, 12'
#set terminal x11
#set output
set encoding utf8

set xrange [-0.5:3.5]
set style line 2 lc rgb 'black' lt 1 lw 1
set style data histogram
set style histogram cluster gap 1
set style fill pattern border
set boxwidth 0.9
set bmargin at screen 0.125
set logscale y
set grid ytics
set ylabel 'Average time per query (μs)'
set title ARG1 font 'Helvetica Bold, 14'
set key outside bottom center box horizontal Right autotitle columnheader height 1

plot ARG2 using 2:xtic(1) ls 2, \
            '' using 3 ls 2, \
            '' using 4 ls 2, \
            '' using 5 ls 2
