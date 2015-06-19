# init script for antigen
export ZGITREPO_USER_CONFIG_FILE=$HOME/.zgitrepo_user.config
autoload -Uz zgit-repo-user-config
add-zsh-hook precmd zgit-repo-user-config
