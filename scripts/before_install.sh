#!/bin/bash

#download nodejs and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install nodejs

#create directus dir if it doesn't exist
DIR="/home/ec2-user/directus"
if [ -d "$DIR"]; then
	echo "${DIR} exists"
else
	echo "Creating ${DIR} directory"
	mkdir ${DIR}
fi
