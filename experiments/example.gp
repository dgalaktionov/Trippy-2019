#set size 0.5, 1
#set terminal png size 800,500 enhanced font "Helvetica,20"
#set output 'output.png'

set xrange [-0.8:3.8]
set style line 2 lc rgb 'black' lt 1 lw 1
set style data histogram
set style histogram cluster gap 1
set style fill pattern border -1
set boxwidth 0.9
set bmargin at screen 0.2
set xtics format ""
set grid ytics
set title ARG1 font 'Helvetica Bold, 14'
set key outside bottom box horizontal Left samplen 1 autotitle columnheader

plot ARG2 using 2:xtic(1) ls 2, \
            '' using 3 ls 2, \
            '' using 4 ls 2, \
            '' using 5 ls 2, \
     ARG3 using 2 ls 2, \
            '' using 3 ls 2, \
            '' using 4 ls 2, \
            '' using 5 ls 2
