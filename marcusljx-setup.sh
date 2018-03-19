#!/bin/bash 

RC_FILE="~/.zshrc"
LOGIN_FILE="~/.profile"
REBOOT=false

function say() {
    echo "=========== $@"
}

#======================================
say "[INSTALL] vim"
sudo apt install -y vim

#======================================
say "[INSTALL] zsh + oh-my-zsh "
sudo apt install -y vim
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

#======================================
say "[APPEND] adding shell cmds to ${RC_FILE}"
echo '## MARCUSLJX BASH SCRIPTS' >> ${RC_FILE}
echo 'source ${SCRIPTS_HOME}/.src' >> ${RC_FILE}
 
#======================================
say "[APPEND] adding login cmds to .profile"
echo '## MARCUSLJX LOGIN SCRIPTS' >> ${LOGIN_FILE}
echo 'export SCRIPTS_HOME=${HOME}/scripts' >> ${LOGIN_FILE}
echo 'source ${SCRIPTS_HOME}/.login' >> ${LOGIN_FILE}
REBOOT=true
