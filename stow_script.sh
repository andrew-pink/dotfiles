if [ -d "/usr/bin/zsh" ]
then
    #!/usr/bin/zsh"
else
    #!/bin/zsh
fi

stow --adopt -t ~/.oh-my-zsh/custom oh-my-zsh
stow --adopt vim
stow --adopt zsh
