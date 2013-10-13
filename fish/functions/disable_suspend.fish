function disable_suspend
	touch /var/lock/was_suspended $argv; 

end
