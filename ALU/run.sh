#!/bin/bash

bsc -sim -g mkTestbenchALU TestbenchALU.bsv
bsc -sim -e mkTestbenchALU
./a.out
