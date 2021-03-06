#!/usr/bin/env bash

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
. $HOME/.asdf/asdf.sh

asdf plugin add nodejs
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf plugin add yarn
asdf install nodejs $(cat .tool-versions|awk '/nodejs/ {print $2}')
asdf install yarn $(cat .tool-versions|awk '/yarn/ {print $2}')
