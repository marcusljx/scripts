#!/bin/bash 

SCRIPTS_HOME=${HOME}/scripts
RC_FILE="${HOME}/.zshrc"
LOGIN_FILE="${HOME}/.profile"
REBOOT=false

function say() {
    echo "=========== $@"
}

function install_other_packages() {
    sudo apt install -y \
    openvpn \
    openvpn-systemd-resolved \
    network-manager-openvpn \
    network-manager-openvpn-gnome \
    guake 
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
echo 'SCRIPTS_HOME=${HOME}/scripts' >> ${RC_FILE}
echo 'source ${SCRIPTS_HOME}/.src' >> ${RC_FILE}
 
#======================================
say "[APPEND] adding login cmds to .profile"
echo '## MARCUSLJX LOGIN SCRIPTS' >> ${LOGIN_FILE}
echo 'export SCRIPTS_HOME=${HOME}/scripts' >> ${LOGIN_FILE}
echo 'source ${SCRIPTS_HOME}/.login' >> ${LOGIN_FILE}
REBOOT=true

#======================================
say "[INSTALL] Other Tools"
install_other_packages

