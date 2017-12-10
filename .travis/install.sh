#!/bin/sh

# Install CMake 3.10
cd /tmp/cmake/cmake-3.10.0/
./configure --prefix=/opt/cmake
make
sudo make install

# Install SFML 2.3
sudo apt-get install -y libsfml-dev

# Install g++-6 and set as default version
sudo apt-get install -qq g++-6
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 90

cd $TRAVIS_BUILD_DIR
