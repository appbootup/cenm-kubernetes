#!/bin/sh

set -eux
NO_CACHE=--no-cache
NO_CACHE=

cd enm_identity_manager-image
docker build -t enm_identity_manager . -f enm_identity_manager-Dockerfile $NO_CACHE
cd ..

cd enm_signer-image
docker build -t enm_signer . -f enm_signer-Dockerfile $NO_CACHE
cd ..

cd enm_networkmap-image
docker build -t enm_netmap . -f networkmap-Dockerfile $NO_CACHE
cd ..

cd enm_nfs-image
docker build -t enm_nfs . -f nfs-Dockerfile $NO_CACHE
cd ..

cd enm_notary-image
docker build -t enm_notary . -f notary-Dockerfile $NO_CACHE
cd ..

cd corda_party-image
docker build -t corda_party . -f party-Dockerfile $NO_CACHE
cd ..

docker images "enm_*"
