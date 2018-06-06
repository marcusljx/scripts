#!/bin/bash
SCRIPT=https://gist.githubusercontent.com/marcusljx/84e2412a0e33f096de0ee05b64ef8867/raw/0ee1253a00b007d4c64989b713b88dbf072acbac/update-go.sh

curl ${SCRIPT} | sh -s $@

