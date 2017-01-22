# zgit-repo-user-config

This zsh plugin was developed for auto user information configuration of git repositories under user's specified directory.

![sample](https://raw.githubusercontent.com/kmhjs/zgit-repo-user-config/master/image/preview.gif)

## How to set up

1. Write configuration in your `.zshenv` as follows.

```
export ZGITREPO_USER_CONFIG_FILE=$HOME/.zgitrepo_user.config
```

2. Install `zcl` by following instruction in [kmhjs/zcl](https://github.com/kmhjs/zcl) .

Example : Replace `${somewhere}` to your install directory.

```
curl https://raw.githubusercontent.com/kmhjs/zcl/master/zcl > ${somewhere}/zcl
```

and write followings into `.zshrc`

```
FPATH=${somewhere}:$FPATH
autoload -Uz zcl
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

## If you don't want to use `zcl` version

Use old releases in [release](https://github.com/kmhjs/zgit-repo-user-config/releases/tag/release-20170121_without_zcl_final) or [branch](https://github.com/kmhjs/zgit-repo-user-config/tree/release/20170121_without_zcl_final) .  
Note that this branch will not be maintained.

## If you have old-format (before zcl format) configuration

You need to migrate your configuration to new format.  
Please use `util/migrate.sh` for this purpose. If you have proper configuration
for variable `ZGITREPO_USER_CONFIG_FILE`, the new format configuration will be
displayed. After display, please paste (replace) new format configuration to
actual configuration file.

## License

See `LICENSE`.
