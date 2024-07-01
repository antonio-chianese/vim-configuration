if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ALIASES
set EDITOR vim
alias ls='exa --long --header --git -a'
alias python='python3'
alias antonioc='cd /mnt/c/Users/chian/OneDrive/antonioc/'
alias school='cd /mnt/c/Users/chian/OneDrive/antonioc/school_docs/'
alias fishrc='$EDITOR ~/.config/fish/config.fish'
alias sfishrc='source ~/.config/fish/config.fish'
alias nvimrc='$EDITOR ~/.config/nvim/init.lua'
alias md='mkdir -p'
alias rd='rmdir'
alias tree='tree -a'

# FUNCTIONS
function wclip
    cat $argv[1] | clip.exe
end
