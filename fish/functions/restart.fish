function restart
	pkill awesome
	pkill kwin
	kquitapp plasma-desktop
	plasma-desktop&

	sleep 3s
	awesome

end
