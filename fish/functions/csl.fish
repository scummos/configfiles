function csl
	set z (kdevelop --sessions 2>/dev/null |grep "$argv:  " |awk -F'{' '{print $2}' |awk -F'}' '{print $1}')
	test -n "$argv"
	and test -n "$z"
	and set res "/home/sven/.cache/kdevduchain/kdevelop-{$z}"
	and echo "clearing directory $res"
	and rm -R $res
	and echo "Okay."

end
