sudo add-apt-repository -y ppa:paparazzi-uav/ppa
sudo apt-get update
sudo apt-get -f -y install paparazzi-dev paparazzi-jsbsim dfu-util pprzgcs
sudo apt-get -f -y install python-is-python3 gcc-arm-none-eabi gdb-multiarch
sudo apt-get -f -y install libsdl1.2-dev libsdl-ttf2.0-dev
sudo apt-get -f -y install kate cmake
sudo apt-get -f -y install libboost-all-dev
git remote update -p
sudo cp conf/system/udev/rules/*.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules
make