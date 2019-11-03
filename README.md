# dotfile

## Requirements
- Shougo/dein.vim
- prezto
 
## neobundle install
    
   https://github.com/Shougo/dein.vim

## zsh(prezto)
forked from sorin-ionescu/prezto
    
    $ git clone --recursive https://github.com/mkaigawa/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
    $ setopt EXTENDED_GLOB
    $ for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
      done
