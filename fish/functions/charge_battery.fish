function charge_battery
	echo 70 > /sys/devices/platform/smapi/BAT0/start_charge_thresh
end
