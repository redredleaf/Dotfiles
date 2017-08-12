export ZSH=/Users/windrivder/.oh-my-zsh
#export PATH=$PATH:$HOME/bin
#export PATH=$PATH:/usr/local/sbin
#export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/bin:/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin"

ZSH_THEME="robbyrussell"

plugins=(git)
plugins=(git vi-mode)
bindkey -M viins 'jj' vi-cmd-mode
source $ZSH/oh-my-zsh.sh

alias atmc_admin='cd /Users/windrivder/Documents/work/admin_sys_v1; source env.sh'
alias pip2l='pip2 list --format columns'
alias pip3l='pip3 list --format columns'
alias sql='mycli -uroot'
alias vi='vim -p'
alias dwm='sudo periodic daily weekly monthly'
