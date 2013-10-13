function cpu-auto
	for i in 0 1 2 3; cpufreq-set -c $i -g ondemand; end; 
end
