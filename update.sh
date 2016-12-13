
#!/bin/sh

##############################
##############################
####
#### This script is for Frontend dev.
####
#### You can change it to
#### meet your colleague's
#### and your needs.
####
##############################
##############################

cd ~/axsem/morgana

echo "##############################"
echo "###      Pull Morgana      ###"
echo "##############################"

git pull
bower update
npm install

cd ~/axsem/nagini

echo "##############################"
echo "###      Pull Nagini       ###"
echo "##############################"

git pull
git submodule update
npm run snape:install
npm run snape:build
npm install

cd  ~/axsem/snape

echo "##############################"
echo "###      Pull Snape       ###"
echo "##############################"

git pull
bower update
bower install
