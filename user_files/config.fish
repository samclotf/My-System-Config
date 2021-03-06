source ~/.config/fish/config_local.fish

function fish_prompt
    set -l err $status
    if test $err -eq 0
        echo -n (set_color cyan)"[^_^] "
    else
        echo -n (set_color red)"$err [>_<] "
    end
    echo -n (set_color normal)$PWD(set_color red)" "
    if set -q prompt_char
        echo -n "$prompt_char"
    else
        echo -n '$'
    end
    if set -q fish_git_prompt
        echo -n (set_color green)(fish_git_prompt)" "
    else
        echo -n " "
    end
end

# disable help message
set fish_greeting

# For when your computer is doing a good job
alias thank-you='echo "You'"'"'re welcome! <3"'

# Mac's ls has a different option for colored output
if which sw_vers
    set color_opt "-G"
else
    set color_opt "--color"
end
alias ls='ls $color_opt -hF'
alias l='ls $color_opt -hF'
alias la='ls $color_opt -AhF'
alias ll='ls $color_opt -lhF'
alias lla='ls $color_opt -lAhF'

alias pvi='vi -'
alias vi='vi -p'

alias gs='git status'

alias du='du -hs'

alias df='df -h'

# to train myself to use vi command
alias grep='grep --color'
alias ag='ag --color-path=35'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
if which sw_vers
    alias alert='osascript -e "display alert \"command finished\""'
else
    alias alert='notify-send --urgency=critical "command finished"'
end

#alias mus='cd ~/music && cmus'

alias vba='source venv/bin/activate'
alias vba2='source venv2/bin/activate'
