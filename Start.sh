#!/bin/bash

# Build kali-machine image
docker build -t kali-machine .

# Start kali-machine image
docker run -it kali-machine /bin/bash