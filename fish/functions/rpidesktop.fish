function rpidesktop
	set DISPLAY :0
	Xephyr :1 -screen 1024x768&


	set DISPLAY :1
	ssh rpi "lxde"
	kill -HUP %1
	set DISPLAY :0

end
