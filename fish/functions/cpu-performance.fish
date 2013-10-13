function cpu-performance
	for i in 0 1 2 3; cpufreq-set -c $i -g performance; end; 
end
