#!/bin/bash 

RC_FILE="~/.zshrc"
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
say "[SETTING] Set 3-finger tap to middle-click"
synclient TapButton3=2

#======================================
say "[APPEND] adding source cmds to ${RC_FILE}"
echo '## MARCUSLJX SCRIPTS' >> ${RC_FILE}
echo 'source ${HOME}/scripts/.src' >> ${RC_FILE}
