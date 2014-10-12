#!/bin/bash
# sstv camera, Gerrit Polder, PA3BYA
# shell script to test SSTV camera
raspistill -t 1 --width 320 --height 256 -e png -o /tmp/image.png
# add callsign
mogrify -pointsize 24 -draw "text 10,40 'MYCALL'" /tmp/image.png
./pisstvpp -pm1 -r22050 /tmp/image.png
sudo ./pifm_sstv /tmp/image.png.wav
rm /tmp/image.png*
