# enable gpg-agent
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

# Alias definitions.
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# Install Ruby Gembs to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

# Add color to terminal
export TERM=xterm-color
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[1;32m\]\u@\h:\[\e[1;33m\]\w\[\e[1;36m\]\$(parse_git_branch)\[\e[00m\]$ "

