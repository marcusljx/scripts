#!/bin/bash

# set 3-finger tap as middle-click
synclient TapButton3=2

# source all login scripts
for f in ${SCRIPTS_HOME}/login/*; do
    source $f
done

# start guake process
guake &
