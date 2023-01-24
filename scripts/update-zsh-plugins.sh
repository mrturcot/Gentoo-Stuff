#!/bin/bash

rm -rf $HOME/.oh-my-zsh/custom/plugins/*
cd $HOME/.oh-my-zsh/custom/plugins
git clone https://github.com/marlonrichert/zsh-autocomplete.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-completions.git
git clone https://github.com/larkery/zsh-histdb.git
git clone https://github.com/zsh-users/zsh-history-substring-search.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git