# Zsh configurations
This configuration is based on this [article](https://www.christitus.com/zsh/)
Start installing the shell and the dependencies:

- zsh - ZSH Shell basic configuration

        sudo apt install zsh

        mkdir -p "$HOME/.zsh"

        # use this basic zsh configuration file
        wget https://raw.githubusercontent.com/rigtsm/terminal/master/zsh/.zshrc -O ~/.zshrc

        # custom alias
        wget https://raw.githubusercontent.com/rigtsm/terminal/master/zsh/.zsh/aliasrc -O ~/.zsh/aliasrc

        # use the "pure" minimalist the theme
        git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"



- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) - syntax highlighting for ZSH in standard repos

        # on the ~/.zsh
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

        # if missing in .zshrc file then:        
        echo "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
        
        source .zshrc


- [autojump](https://github.com/wting/autojump) - jump to directories with j or jc for child or jo to open in file manager

        sudo apt-get install -y autojump

        # if missing in .zshrc file, then:
        echo "source /usr/share/autojump/autojump.sh" >> ${ZDOTDIR:-$HOME}/.zshrc

        source .zshrc

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md) - Suggestions based on your history

        # on ~/.zsh
        git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

        # if missing in .zshrc file, then add:
        echo "source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

        source .zshrc


- Add apt-install-repository suggestions:

        echo "source /etc/zsh_command_not_found" >> ${ZDOTDIR:-$HOME}/.zshrc

## Make zsh the default shell

    # edit the user default shell on
    sudo nano /etc/passwd
