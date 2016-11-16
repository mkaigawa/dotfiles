# dotfile

## Requirements
- neobundle
- prezto
 
## neobundle install
    
    $ mkdir -p ~/.vim/bundle
    $ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

## zsh(prezto)
forked from sorin-ionescu/prezto
    
    $ git clone --recursive https://github.com/mkaigawa/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
    $ setopt EXTENDED_GLOB
    $ for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
      done
