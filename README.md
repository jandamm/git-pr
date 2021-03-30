# git-pr

A collection of scripts to work with prs from the commandline.

The scripts are for [Github](https://github.com), [Gitlab](https://gitlab.com)
and [Bitbucket](https://bitbucket.org) but some features are only available on
a subset.

## Installation & Setup

If you use `zsh` as your shell you can add this repo as a plugin. This should
work with basically any plugin manager for zsh.

If you use `bash` or any other shell you clone this repo and add `bin` to your
path. Completions only work with `zsh` for now.

### Github

You need to install [gh](https://github.com/cli/cli).

### Gitlab

Everything should work with plain `git`.

### Bitbucket

You need `curl` - which should be preinstalled. It is also recommended to
install [jq](https://stedolan.github.io/jq/).

To create prs you need to authorize yourself via netrc:

``` shell
echo "machine bitbucket.org login $username password $accesstoken" >> $HOME/.netrc
```

Where `$username` is your "Username" (not the email address) and `$accesstoken` is
an "App password". You can find both on [bitbucket.org](https://bitbucket.org)
in your "Personal settings".

## Configuration

### Jira prefix

Adds the jira ticket number to the pr branch name. To match tickets named
`ABC1234` execute the following command.

``` shell
git config --add git-pr.jira.prefix 'ABC'
```

### Reviewer (bitbucket)

Automatically assign a new pr to another user.

``` shell
git config --add git-pr.reviewer 'username'
```
