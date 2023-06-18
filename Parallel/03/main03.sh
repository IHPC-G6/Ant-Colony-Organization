#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <np>"
  exit 1
fi

np=$1
EXPERIMENTS=100

SEED = 10

for (( NODES = 10; NODES <= 100; NODES += 5 )); do
    echo "Running ./main03 $NODES $EXPERIMENTS $SEED"
    mpirun -np 4 ./main03 $NODES $EXPERIMENTS $SEED
done
