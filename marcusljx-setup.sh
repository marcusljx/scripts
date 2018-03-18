#!/bin/bash 

RC_FILE="~/.zshrc"

function say() {
    echo "=========== $@"
}

say "[INSTALL] vim"
sudo apt install -y vim

say "[INSTALL] zsh + oh-my-zsh "
sudo apt install -y vim
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo '## MARCUSLJX SCRIPTS' >> ${RC_FILE}
echo 'source ${SCRIPTS}/env/*' >> ${RC_FILE}
