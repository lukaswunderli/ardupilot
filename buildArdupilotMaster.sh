#git checkout master
#git pull
#git submodule update --init --recursive
./waf configure --board skyviper-v2450
./waf copter

buildDir='build/skyviper-v2450/bin'
./Tools/scripts/make_abin.sh "$buildDir/arducopter.bin" "$buildDir/arducopter.abin" "$buildDir/git.log"
