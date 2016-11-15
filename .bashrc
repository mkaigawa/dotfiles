# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

# User specific aliases and functions
alias ls='ls -CF --color=auto'
alias la='ls -AlFh --show-control-chars --color=auto'

export PS1='\[\033[01;32m\]\u\[\033[01;34m\] \w \$\[\033[00m\] '

export HISTSIZE=100000
export LANG='ja_JP.UTF-8'
export LC_ALL='ja_JP.UTF-8'
export LC_MESSAGES='ja_JP.UTF-8'
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
fi
