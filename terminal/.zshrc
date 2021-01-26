# Set name of the theme to load.
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bundler brew git-open zsh-z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='code'

# Aliases

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# ZSH Aliases
alias zshrc='code ~/.zshrc'
alias ohmyzsh="code ~/.oh-my-zsh"

# Ruby Aliases
alias be="bundle exec"
alias brespect="SIMPLECOV=1 RAILS_ENV=test bundle exec rspec"
alias booya="bundle && yarn"

# Git Aliases
alias gap="git add -p"
alias gm--ff="git merge --ff-only"
alias gcmsg="git commit -m"
alias ggpull="git pull --ff-only"
alias ggpush='git push origin $(git_current_branch)'
alias git-touch='git commit --amend --no-edit'

# CLI Tool Aliases
alias myip="ifconfig en0 | grep 'inet ' | cut -f2 -d ' '"
alias rm="trash"

# OS Path
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export PATH="/usr/local/sbin:$PATH"

# MySQL
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# OpenSSL - commented these out bc they weren't the solution but might be needed?
# export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
# export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
# export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/opt/openssl@1.1/lib/"


# ASDF Configuration
. $HOME/.asdf/asdf.sh
