#!/bin/bash

IMAGE_NAME="mnist-singularity-image"

singularity build --fakeroot $IMAGE_NAME.sif Singularity
#if we need to capture the output, add '2>&1 | tee singularity-run.out' to the end of the command
singularity run --bind ./main.py:/app/main.py $IMAGE_NAME.sif