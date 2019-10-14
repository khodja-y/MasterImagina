#!/bin/sh
bindir=$(pwd)
cd /home/e20180009306/Bureau/MasterImagina/IMAGINA_S3/Informatique_graphique/TP2/TP2_code/TP2_maillages/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "xYES" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		/usr/bin/gdb -batch -command=$bindir/gdbscript --return-child-result /home/e20180009306/Bureau/MasterImagina/IMAGINA_S3/Informatique_graphique/TP2/TP2_code/build/TP2_maillages 
	else
		"/home/e20180009306/Bureau/MasterImagina/IMAGINA_S3/Informatique_graphique/TP2/TP2_code/build/TP2_maillages"  
	fi
else
	"/home/e20180009306/Bureau/MasterImagina/IMAGINA_S3/Informatique_graphique/TP2/TP2_code/build/TP2_maillages"  
fi
