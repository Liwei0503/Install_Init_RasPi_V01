sudo apt-get update 
sudo apt-get upgrade
sudo apt-get install ttf-wqy-zenhei ttf-mscorefonts-installer fonts-moe-standard-kai
sudo apt-get install can-utils
sudo pip install python-can
sudo apt-get install python-pip
bash <(curl -s https://thonny.org/installer-for-linux)

#-------------------------------INSTALL opencv4---------------------------------------------------
#  https://www.pyimagesearch.com/2018/09/26/install-opencv-4-on-your-raspberry-pi/
#-------------------------------------------------------------------------------------------------
sudo apt-get purge wolfram-engine
sudo apt-get purge libreoffice*
sudo apt-get clean
sudo apt-get autoremove
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install build-essential cmake unzip pkg-config
sudo apt-get install libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev

sudo apt-get install libgtk-3-dev
sudo apt-get install libcanberra-gtk*
sudo apt-get install libatlas-base-dev gfortran
sudo apt-get install python3-dev
cd ~
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.0.0.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.0.0.zip
unzip opencv.zip
unzip opencv_contrib.zip
mv opencv-4.0.0 opencv
mv opencv_contrib-4.0.0 opencv_contrib
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
sudo pip install virtualenv virtualenvwrapper
sudo rm -rf ~/get-pip.py ~/.cache/pip

# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

echo -e "\n# virtualenv and virtualenvwrapper" >> ~/.profile
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.profile
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.profile
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.profile

source ~/.profile

mkvirtualenv cv -p python3

workon cv

pip install numpy

