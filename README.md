# zgit-repo-user-config

This zsh plugin was developed for auto user information configuration of git repositories under user's specified directory.

![sample](https://raw.githubusercontent.com/kmhjs/zgit-repo-user-config/master/image/preview.gif)

## How to set up

Write configuration in your `.zshenv` as follows.

```
export ZGITREPO_USER_CONFIG_FILE=$HOME/.zgitrepo_user.config
```

### Manual install

In `.zshrc`.

```
FPATH=<your plugin install directory>:$FPATH
autoload -Uz zgit-repo-user-config
```

### Install with Antigen

If you use Antigen, add the following line to your `.zshrc`.

```
antigen bundle kmhjs/zgit-repo-user-config
```

You can set this path of configuration file as your favorite path and file name.

### Basic configuration

1. Load `zgit-repo-user-config`. (Manually, or with Antigen)
2. In parent directory, type `zgit-repo-user-config -a` for register directory as parent directory.
3. Call this plugin in `precmd`. (in `.zshrc` etc)

```
add-zsh-hook precmd zgit-repo-user-config
```

## License

See `LICENSE`.
