#!/bin/bash
image=$(ls /boot/BMPs/ | shuf -n 1)
source /home/ark/.config/shifttest.txt
while [ "$image" = "$lastimage" ]
do
  image=$(ls /boot/BMPs/ | shuf -n 1)
done
rm /home/ark/.config/shifttest.txt
echo lastimage=$image >> /home/ark/.config/shifttest.txt
cp /boot/BMPs/$image /boot/logo.bmp

