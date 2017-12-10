#!/bin/sh

# TODO: GCC 7

if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
  brew update
fi

if [[ "$TRAVIS_OS_NAME" == "linux" ]]; then
  # For C++17 we need newer CMake
  mkdir /tmp/cmake
  wget https://cmake.org/files/v3.10/cmake-3.10.0.tar.gz -P /tmp/cmake/
  cd /tmp/cmake
  tar xzf cmake-3.10.0.tar.gz
  
  # Newer version of GCC
  sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
  
  # SFML 2.3 (instead of 2.1 in Trusty)
  sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu xenial universe"
  sudo apt-get update -qq
  
  cd $TRAVIS_BUILD_DIR
fi
