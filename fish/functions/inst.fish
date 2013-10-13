function inst
	if [ -d build ]
		cd build
	end
	if [ -e rules.ninja ]
		ninja install; and notify-send "Build finished successfully"; or notify-send "Build failed"
	else
		make -j 2 install; and notify-send "Build finished successfully"; or notify-send "Build failed"
	end
end
