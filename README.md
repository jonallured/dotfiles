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

## Install on a server

I use tags to modify my dotfiles slightly for a Mac vs Server environment so
provide the `linux` tag when installing on a server:

```
$ ./setup linux
```

[rcm]: https://github.com/thoughtbot/rcm
[op]: https://developer.1password.com/docs/cli
