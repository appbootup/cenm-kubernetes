#!/bin/sh

set -eux

# Build volumes
./scripts/build_volumes.sh

# Generate PKI certs
./scripts/build_pki.sh

# Generate Docker images
./scripts/build_docker_images.sh

echo "You can now start the images using start.sh"