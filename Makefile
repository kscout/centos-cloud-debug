.PHONY: build run

TAG ?= latest
REPO ?= kscout/centos-cloud-debug
REPO_TAG ?= ${REPO}:${TAG}

# build and tag container
build:
	docker build -t ${REPO_TAG} .

# run container
run:
	docker run -it --rm --hostname centos-cloud-debug ${REPO_TAG}
