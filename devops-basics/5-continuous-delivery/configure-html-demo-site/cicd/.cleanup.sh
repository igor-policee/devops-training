#!/bin/bash

CURRENT_BUILD_NUMBER="${1}"
BUILD_PATH='/var/lib/docker/volumes/build-volume/_data/build-*'

for file in ${BUILD_PATH}
do
  if [ "${file}" == "/var/lib/docker/volumes/build-volume/_data/build-${CURRENT_BUILD_NUMBER}" ]
  then
    continue
  elif [ "${file}" == "/var/lib/docker/volumes/build-volume/_data/build-$((CURRENT_BUILD_NUMBER - 1))" ]
  then
    continue
  elif [ "${file}" == "/var/lib/docker/volumes/build-volume/_data/build-$((CURRENT_BUILD_NUMBER - 2))" ]
  then
    continue
  else
    rm --recursive --force "${file}"
  fi
done