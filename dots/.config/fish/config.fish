# Commands to run in interactive sessions can go here
if status is-interactive
    # No greeting
    set fish_greeting

    # Use starship
    function starship_transient_prompt_func
        starship module character
    end
    if test "$TERM" != "linux"
        starship init fish | source
        enable_transience
    end

    # Colors
    if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    end

    starship init fish | source
    if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    end

    alias pamcan=pamcan
    alias php="mise exec -- php"
    alias yarn="mise exec -- yarn"
    alias node="mise exec -- node"
    alias pipx="mise exec -- pipx"
    alias npm="mise exec -- npm"
    alias npx="mise exec -- npx"
    alias composer="mise exec -- composer"
    alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
    alias pamcan pacman
    # Aliases
    # kitty doesn't clear properly so we need to do this weird printing
    alias clear "printf '\033[2J\033[3J\033[1;1H'"
    alias celar "printf '\033[2J\033[3J\033[1;1H'"
    alias claer "printf '\033[2J\033[3J\033[1;1H'"
    alias pamcan pacman
    alias q 'qs -c ii'
    alias conda="/opt/anaconda/bin/conda"
    alias pnpm="mise exec -- pnpm"
    alias gemini="mise exec -- gemini"
    alias python="mise exec -- python"
    set -gx ANDROID_HOME $HOME/Android/sdk
    set -gx ANDROID_SDK_ROOT $HOME/Android/sdk
    set -gx PATH $PATH $ANDROID_HOME/cmdline-tools/latest/bin
    set -gx PATH $PATH $ANDROID_HOME/platform-tools
    set -gx PATH $PATH $ANDROID_HOME/emulator
    if test "$TERM" != "linux"
        alias ls 'eza --icons'
    end

end

fish_add_path $HOME/.spicetify

# Added by ToolHive UI - do not modify this block
fish_add_path -g $HOME/.toolhive/bin
# End ToolHive UI

# opencode
fish_add_path $HOME/.opencode/bin

# Added by LM Studio CLI tool (lms)
set -gx PATH $PATH $HOME/.lmstudio/bin
export PATH="$HOME/.local/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/anaconda/bin/conda
    eval /opt/anaconda/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/anaconda/etc/fish/conf.d/conda.fish"
        . "/opt/anaconda/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/anaconda/bin" $PATH
    end
end
# <<< conda initialize <<<
