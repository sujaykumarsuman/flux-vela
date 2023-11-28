prerequisites:
ifndef GITHUB_USER
	$(error GITHUB_USER is undefined)
else
	@echo "found GITHUB_USER=${GITHUB_USER}"
endif
ifndef GITHUB_TOKEN
	$(error GITHUB_TOKEN is undefined)
else
	@echo "found GITHUB_TOKEN"
endif
.PHONY: prerequisites

kind-create:
	kind create cluster --name flux-vela

kind-delete:
	kind delete cluster --name flux-vela

flux-bootstrap: prerequisites
	@flux bootstrap github \
		 --owner=${GITHUB_USER} \
		 --repository=vela-apps \
		 --branch=master \
		 --personal \
		 --path=clusters/kind-flux \
		 --namespace=flux-bootstrap \
		 --components-extra image-reflector-controller,image-automation-controller
.PHONY: flux-bootstrap
