#!/bin/bash

# set 3-finger tap as middle-click
synclient TapButton3=2

for f in ${SCRIPTS_HOME}/login/*; do
    source $f
done
