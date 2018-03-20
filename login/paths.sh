#!/bin/bash

export GOROOT=/usr/local/go
export GOPATH=${HOME}/gopath
export SCRIPTS_HOME=${HOME}/scripts

export PATH=${PATH}\
:${SCRIPTS_HOME}/path_scripts\
:${GOROOT}/bin\
:${GOPATH}/bin
