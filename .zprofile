[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh
nvm use --silent 6.7.0

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export QT_QPA_PLATFORMTHEME=qt5ct

# for GO programming
export GOPATH=$HOME/code/go
export PATH="$PATH:$GOPATH/bin"

# Dart
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Flutter
export PATH=$HOME/Apps/flutter/bin:$PATH

# export GOOGLE_APPLICATION_CREDENTIALS="/home/nox/Downloads/Test-241f5f4e671d.json"

#export PATH="/usr/bin/python"
#export PATH="$PATH:/usr/bin/python"
