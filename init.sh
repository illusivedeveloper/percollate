#!/bin/bash

#!/usr/bin/env bash

if [ ! -d ~/.nvm ]; then

	curl https://raw.githubusercontent.com/creationix/nvm/v0.11.1/install.sh | bash
	source ~/.nvm/nvm.sh
	source ~/.profile
	source ~/.bashrc
fi
#curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#chmod +x /root/.nvm/nvm.sh
#./root/.nvm/nvm.sh
#source /root/.bashrc
#export NVM_DIR=$HOME/.nvm
#source $NVM_DIR/nvm.sh
