#!/bin/sh
if ! [ -x "$(command -v git)" ]; then
  echo 'Please install git '
  exit 1
  else
  echo 'git is installed' 
fi
if ! [ -x "$(command -v npm)" ]; then
  echo 'Please install npm '
  else
  echo 'npm is installed'
fi
if ! [ -x "$(command -v bower)" ]; then
  echo 'Please install bower '
  exit 1
  else
  echo 'bower is installed'
fi
if ! [ -x "$(command -v gulp)" ]; then
  echo 'Please install bower '
  exit 1
  else
  echo 'gulp is installed'
fi
if ! [ -x "$(command -v ember)" ]; then
  echo 'Please install ember '
  exit 1
  else
  echo 'ember is installed'
fi
if [ -d ~/axsem ];
  then
    if [ -d ~/axsem/morgana ];
      then
        echo 'Nice you have morgana :)'
      else
        cd ~/axsem
        git clone git@github.com:aexeagmbh/morgana.git
        cd ~/axsem/morgana
        npm install
        bower install
    fi
    if [ -d ~/axsem/snape ];
      then
        echo 'Nice you have snape :)'
      else
        cd ~/axsem
        git clone git@github.com:aexeagmbh/snape.git
        cd ~/axsem/snape
        npm install
        bower install
    fi
    if [ -d ~/axsem/nagini ];
      then
        echo 'Nice you have nagini :)'
      else
        cd ~/axsem
        git clone git@github.com:aexeagmbh/nagini.git
        cd ~/axsem/nagini
        git submodule init
        git submodule update
        npm run snape:install
        npm run snape:build
        npm install
        cp config.stage.js config.dev.js
    fi
  else
    echo 'mkdir axsem'
    mkdir axsem
fi
