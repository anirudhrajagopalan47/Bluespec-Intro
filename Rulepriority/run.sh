#!/bin/bash

bsc -sim -g mkRulepriority rulepriority.bsv
bsc -sim -e mkRulepriority
./a.out
