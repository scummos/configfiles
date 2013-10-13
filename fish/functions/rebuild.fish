function rebuild
	if [ ! -d build ]
		cd ..
	end
	rm -Rf build
	mkdir build
	cd build
	cmake .. -DCMAKE_INSTALL_PREFIX=~/install -DCMAKE_BUILD_TYPE=debugfull -GNinja -DKDE4_BUILD_TESTS=true
	inst
end
