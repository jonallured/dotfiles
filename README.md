# Jon Allured's Dot Files

I use [rcm] to manage my dotfiles, it's great! There is also a build step that
relies on the [1Password CLI][op] which is also great.

## Install

First ensure that dependencies are installed:

```
$ brew install rcm 1password-cli
```

Then clone this repo and run the setup:

```
$ ./setup
```

This script builds the exports file with 1Password and then installs all the
dotfiles. It uses the `rcrc` file to install all dotfiles, including the `rcrc`
file itself. All subsequent commands use this configuration file, so it no
longer has to be provided.

## AWS

`~/.aws/config` reads its keys from 1Password via `bin/aws-op-creds`.

## Tags

`rcrc` picks the rcm tag from `uname`: `macos` on a Mac and `linux` on a
server, so `rcup` links the right `tag-*` files without a `-t` flag. Pass
`-t` to override it for a single run.

[rcm]: https://github.com/thoughtbot/rcm
[op]: https://developer.1password.com/docs/cli
