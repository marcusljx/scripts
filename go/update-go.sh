#!/bin/bash

VERSION=$1
if [ -z "${VERSION}" ]; then
		echo "usage: $0 <version_number>"
			exit
		fi

		OS="$(echo $(uname) | tr '[:upper:]' '[:lower:]')"
		HOST=https://dl.google.com/go
		TARBALL=go${VERSION}.${OS}-amd64.tar.gz
		TMP=./tmpdir

		# set: exit script immediately if error occurs (prevent removing GOROOT if wget fails)
		set -e

		# get tarball
		sudo wget ${HOST}/${TARBALL} -P ${TMP}

		# remove contents of current GOROOT
		sudo rm -rf ${GOROOT}

		# unpack contents of tarbal into GOROOT
		sudo tar -xvzf ${TMP}/${TARBALL} -C $(dirname $GOROOT)

		# remove tmpdir
		sudo rm -rf ${TMP}
