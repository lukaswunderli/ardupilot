git checkout skyviper-stable-wui
git pull
git submodule update --init --recursive

sudo update-alternatives --set python /usr/bin/python2.7
./waf configure --board=px4-v3
./waf build --target=bin/arducopter

buildDir='build/px4-v3/bin'
./Tools/scripts/make_abin.sh "$buildDir/arducopter.bin" "$buildDir/arducopter.abin"
