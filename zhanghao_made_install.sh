git submodule init
git submodule update
sudo apt-get install python-is-python3 gcc-arm-none-eabi gdb-multiarch
sudo add-apt-repository -y ppa:paparazzi-uav/ppa
sudo apt-get update
sudo apt-get -f -y install paparazzi-dev paparazzi-jsbsim dfu-util pprzgcs
sudo cp conf/system/udev/rules/*.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules
make -j1
./install.sh