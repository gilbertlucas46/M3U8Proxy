#!/bin/bash

# Build the Docker image
docker build -t m3u8-proxy .

# Run the Docker container
docker run -d -p 80:80 -p 443:443 -e ProxyUrl="https://cors-anywhere.geelyfy.uk" m3u8-proxy
