#!/bin/bash

bsc -sim -g mkSwap Swap.bsv
bsc -sim -e mkSwap
./a.out
