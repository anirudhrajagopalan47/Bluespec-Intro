#!/bin/bash

bsc -sim -g mkTrafficLight FSM.bsv
bsc -sim -e mkTrafficLight
./a.out
