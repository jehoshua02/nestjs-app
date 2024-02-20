NODE_VERSION=20
DOCKER_IMAGE_TAG="node:${NODE_VERSION}-alpine"
DOCKER_RUN_BASE="docker run -it --rm --name node${NODE_VERSION}alpine -v ${PWD}:/app -w /app"
alias node="${DOCKER_RUN_BASE} ${DOCKER_IMAGE_TAG}"
alias npm="${DOCKER_RUN_BASE} --entrypoint npm ${DOCKER_IMAGE_TAG}"
alias npx="${DOCKER_RUN_BASE} --entrypoint npx ${DOCKER_IMAGE_TAG}"
alias nest="${DOCKER_RUN_BASE} --entrypoint npx ${DOCKER_IMAGE_TAG} nest"
