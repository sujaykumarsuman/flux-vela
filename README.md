# flux-vela

This project implements fluxcd/kubevela application management model in k8s.

To begin with, 
1. Generate a PAT for the github account where your this repo exist and set following envs:
   ```shell
   export GITHUB_USER=<your username>
   export GITHUB_TOKEN=<your personal token>
   ```
2. run `make kind-create`
3. run `make flux-bootstrap`

This will setup a local kind cluster `kind-flux-vela` with all the required components to start deploying kubevela applications.

#TODO: add more details on how this works
