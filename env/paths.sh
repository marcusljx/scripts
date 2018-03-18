#!/bin/bash

export SCRIPTS_HOME=${HOME}/scripts
export GOROOT=/usr/local/go
export GOPATH=${HOME}/gopath

export PATH=${PATH}\
:${SCRIPTS}/go\
:${GOROOT}/bin\
:${GOPATH}/bin
