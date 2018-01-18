#!/bin/bash

if [ "$TRAVIS_OS_NAME" == "osx" ]; then
  brew install sfml
fi

if [ "$TRAVIS_OS_NAME" == "linux" ]; then
  # Install SFML 2.3
  sudo apt-get install -y libsfml-dev
  
  cd $TRAVIS_BUILD_DIR
fi
