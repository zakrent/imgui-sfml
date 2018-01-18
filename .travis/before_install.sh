#!/bin/bash

if [ "$TRAVIS_OS_NAME" == "osx" ]; then
  brew update
fi

if [ "$TRAVIS_OS_NAME" == "linux" ]; then
  # SFML 2.3 (instead of 2.1 in Trusty)
  sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu xenial universe"
  sudo apt-get update -qq
  
  cd $TRAVIS_BUILD_DIR
fi
