#!/usr/bin/env zsh

brew cask install visual-studio-code

# install cask app without manually checking  security 
sudo xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app

# install vscode extensions
# code --list-extensions | xargs -I {} echo code --install-extension {}
code --install-extension AlanWalk.markdown-toc
code --install-extension 2gua.rainbow-brackets
code --install-extension akamud.vscode-theme-onedark
code --install-extension alexanderbast.vscode-snazzy
code --install-extension christian-kohler.path-intellisense
code --install-extension clinyong.vscode-css-modules
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension CoenraadS.bracket-pair-colorizer-2
code --install-extension dbaeumer.vscode-eslint
code --install-extension donjayamanne.githistory
code --install-extension eamodio.gitlens
code --install-extension ecmel.vscode-html-css
code --install-extension Equinusocio.vsc-community-material-theme
code --install-extension Equinusocio.vsc-material-theme
code --install-extension equinusocio.vsc-material-theme-icons
code --install-extension esbenp.prettier-vscode
code --install-extension evan-buss.font-switcher
code --install-extension HookyQR.beautify
code --install-extension monokai.theme-monokai-pro-vscode
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-keymap
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension ms-vscode-remote.remote-containers
code --install-extension PKief.material-icon-theme
code --install-extension redhat.java
code --install-extension redhat.vscode-yaml
code --install-extension ritwickdey.LiveServer
code --install-extension sdras.night-owl
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension steoates.autoimport
code --install-extension techer.open-in-browser
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension vscjava.vscode-java-debug
code --install-extension vscjava.vscode-java-dependency
code --install-extension vscjava.vscode-java-pack
code --install-extension vscjava.vscode-java-test
code --install-extension vscjava.vscode-maven
code --install-extension vscode-icons-team.vscode-icons
code --install-extension wayou.vscode-todo-highlight
code --install-extension xabikos.JavaScriptSnippets
code --install-extension xabikos.ReactSnippets


# apply vscode settings.json
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json