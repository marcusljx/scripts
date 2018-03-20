#!/bin/bash

alias aptupdate="sudo apt -qq update && sudo apt -qq full-upgrade -y && sudo apt -qq autoremove -y"

export LAST_UPDATE_TIME_FILE=~/.time_since_last_aptupdate
INTERVAL=86400 # 1 day = 86400 seconds

# If last update file does not exist, make one.
if [ ! -f $LAST_UPDATE_TIME_FILE ]; then
		echo 0 > $LAST_UPDATE_TIME_FILE
	fi

	function doUpdate {
			if (( $(date +%s) > $(cat $LAST_UPDATE_TIME_FILE)+$INTERVAL )); then 
						sudo echo Performing auto-update...
								aptupdate
										date +%s > $LAST_UPDATE_TIME_FILE
											fi
										}

									doUpdate
