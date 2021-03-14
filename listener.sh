#!/bin/bash
while read -r MESSAGE
do
echo $MESSAGE
PARAMETERS=( $MESSAGE )
echo "*******************  starting pulling latest changes  *******************"
cd /home/nawfal
rm -rf ${PARAMETERS[0]}
sleep 2
git clone ${PARAMETERS[1]}
echo "*******************  starting the service... *******************"
cd ${PARAMETERS[0]}
chmod +x main.py
sleep 2
nohup python3 main.py &
echo "*******************  finished!  *******************"
done
