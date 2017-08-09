#!/bin/bash




read -p "Are you sure you want to close all browser windows?" option
option=${option:-n}


if[ [ $option == "y" ] ||  [ $option == Y ]] then

pkill Google Chrome Helper
pkill Safari
pkill Opera Helper
pkill firefox

exit 1;

elif[$option = "n"  || $option = "N"] then 

echo "ok"

exit 1;

else
while[$option !=  "y" || $option != "n" ]; do

echo "y or n?"

if[$option = "y"]; then
pkill Google Chrome Helper
pkill Safari
pkill Opera Helper
pkill firefox

exit 1;
 
else
  echo "ok"
fi
done
fi
