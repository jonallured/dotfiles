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

This script points rcm at the `rcrc` file to install all dotfiles, including
the `rcrc` file itself. All subsequent commands use this configuration file, so
it no longer has to be provided.

## Secrets

Every `rcup` runs `rcm/hooks/pre-up/exports` first, which builds
`rcm/zsh/exports` from `exports.template` with `op inject`. If `op` is missing
or 1Password is locked, `rcup` stops and links nothing. `rcup -K` skips hooks.

## AWS

`~/.aws/config` reads its keys from 1Password via `bin/aws-op-creds`.

## Tags

`rcrc` picks the rcm tag from `uname`: `macos` on a Mac and `linux` on a
server, so `rcup` links the right `tag-*` files without a `-t` flag. Pass
`-t` to override it for a single run.

[rcm]: https://github.com/thoughtbot/rcm
[op]: https://developer.1password.com/docs/cli
