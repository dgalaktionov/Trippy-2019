#set size 0.5, 1
#set terminal postscript eps enhanced
set terminal epscairo size 5,3 font 'Helvetica, 12'
set encoding utf8

set xrange [-0.8:3.8]
set style line 2 lc rgb 'black' lt 1 lw 1
set style data histogram
set style histogram cluster gap 1
set style fill pattern border
set boxwidth 0.9
set bmargin at screen 0.2
set xtics format ""
set grid ytics
set ylabel 'Average time per query (μs)'
set title ARG1 font 'Helvetica Bold, 14'
set key outside bottom box horizontal Left samplen 1 spacing 1.2 autotitle columnheader

plot ARG2 using value(ARG4+2):xtic(1) ls 2, \
            '' using value(ARG4+3) ls 2, \
            '' using value(ARG4+4) ls 2, \
            '' using value(ARG4+5) ls 2, \
     ARG3 using value(ARG4+2) ls 2, \
            '' using value(ARG4+3) ls 2, \
            '' using value(ARG4+4) ls 2, \
            '' using value(ARG4+5) ls 2
