#!/bin/b ash

###########################
# JETBRAINS TOOLBOX PATHS 
###########################
JETBRAINS_APPS_HOME=${HOME}/.local/share/JetBrains/Toolbox/apps
function jb_run() {
    # $1 <- App Dir Name (Goland, PyCharm, etc.)
    lowercaseApp=$(echo $1 | tr '[:upper:]' '[:lower:]')
    latestVersion=$(ls ${JETBRAINS_APPS_HOME}/$1/ch-0 | head -n 1)

    ${JETBRAINS_APPS_HOME}/$1/ch-0/${latestVersion}/bin/${lowercaseApp}.sh
}
alias goland="jb_run Goland"
