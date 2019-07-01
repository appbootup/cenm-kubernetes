## Corda Enterprise Network Manager 1.0 on Kubernetes

The Enterprise Network Manager encompasses four main services:

- Doorman Service - Enables nodes to join the network
- Revocation Service - Enables nodes to be removed from the network
- Network Map Service - Provides a global view of the network
- Signing Service - Provides a way to sign approved requests to join the network (CSRs) or revoke a certificate (CRRs) as well as changes to the network map

Check out the docs @ http://docs.netman.r3.com/releases/head/index.html

## TLDR;
1. Run the `inital_setup.sh` script followed by the `start.sh` script.
2. Check the status of your pods via `kubectl get pods`
3. Open shell on one of the pods by `kubectl exec -it --pod name-- -- /bin/bash`
4. If it's a node pod ssh in by `ssh localhost -p 2223 -l testuser` (password in the node.confs)
5. In the shell, run `run networkMapSnapshot` as a sanity check
6. To pull everything down and recopy the volumes templates run `delete.sh` script

## Interact with CENM components
## Setting things up the manual way