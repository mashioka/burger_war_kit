#!/bin/bash
set -e
set -x

# judge
# run judge server and visualize window
gnome-terminal -- python judge/judgeServer.py
sleep 1
#gnome-terminal -e "python judge/visualizeWindow.py"
gnome-terminal -- python judge/JudgeWindow.py

# init judge server for sim setting
bash judge/test_scripts/init_single_play.sh judge/marker_set/sim.csv localhost:5000 you enemy

# robot
roslaunch burger_war setup_sim.launch

