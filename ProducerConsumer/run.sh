#!/bin/bash

bsc -sim -g mkProducerConsumer ProducerConsumer.bsv
bsc -sim -e mkProducerConsumer
./a.out
