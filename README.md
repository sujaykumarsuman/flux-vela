# vela-apps
repo for flux to monitor

flux bootstrap command:

```shell
flux bootstrap github \
    --owner=${GITHUB_USER} \
    --repository=vela-apps \
    --branch=master \
    --personal \
    --path=clusters/kind-flux \
    --namespace=flux-bootstrap \
    --components-extra image-reflector-controller,image-automation-controller
```
