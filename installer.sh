#!/bin/sh

echo "The installation has started!"
echo ""
echo "Do you have an ssh key for github? [y/n]"

read answer

if [ "$answer" == "y" ]; then
  git clone git@github.com:frr0/Covid-Today.git
else
  git clone https://github.com/frr0/Covid-Today.git

cd Covid-Today
sudo cp program.sh /usr/local/bin
cd /usr/local/bin
sudo rename program.sh covidtoday program.sh

exit 0
