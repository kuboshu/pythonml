#!/usr/bin/env sh
SCRIPT_DIR=$(cd $(dirname $0); pwd)
VERSION=$(cat ${SCRIPT_DIR}/.setup/version)
IMAGE_NAME=$(cat ${SCRIPT_DIR}/.setup/imagename)

docker build -t ${IMAGE_NAME}:${VERSION} ${SCRIPT_DIR}