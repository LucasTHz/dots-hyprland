function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end

starship init fish | source
if test -f ~/.cache/ags/user/generated/terminal/sequences.txt
    cat ~/.cache/ags/user/generated/terminal/sequences.txt
end


alias pamcan=pacman
alias pn=pnpm

# Git aliases
alias gst='git status'
alias gco='git checkout'
alias gcm='git commit -m'
alias gcb='git checkout -b'

# Zypper aliases
alias zy='sudo zypper refresh'
alias zyin='sudo zypper in'
alias zyrm='sudo zypper rm'
alias zyup='sudo zypper up'
alias zydup='sudo zypper dup'

alias hbi='cd ~/Documentos/hbi/'
alias apibankop='cd ~/Documentos/hbi/api-bankop/'
alias pipenv=~/.local/share/python/bin/pip3

export PNPM_HOME="/home/lucas/.local/share/pnpm"


# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end
~/.local/bin/mise activate fish | source
