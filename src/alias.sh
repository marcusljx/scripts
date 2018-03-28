#!/bin/b ash

###########################
# JETBRAINS TOOLBOX PATHS 
###########################
JETBRAINS_APPS_HOME=${HOME}/.local/share/JetBrains/Toolbox/apps
function jb_run() {
    # $1 <- App Dir Name (Goland, PyCharm, etc.)
    # $2 <- bin script (goland.sh, pycharm.sh, etc.)
    latestVersion=$(ls ${JETBRAINS_APPS_HOME}/$1/ch-0 | head -n 1)

    ${JETBRAINS_APPS_HOME}/$1/ch-0/${latestVersion}/bin/$2.sh
}
alias goland="jb_run Goland goland"
alias pycharm="jb_run PyCharm-P pycharm"

###########################
# SHORT FORMS 
###########################
alias k=kubectl
