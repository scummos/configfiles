function plt
	gnuplot (ls -t *.{plt,gnu} --indicator-style=none |head -1); 
end
