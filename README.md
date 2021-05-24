# Jon Allured's Dot Files

I use [rcm] to manage my dotfiles, it's great!

## Install

Start by cloning down this repo and then running something like this:

```
$ env RCRC=$HOME/code/dotfiles/rcm/rcrc rcup -t macos
```

This will use the `rcrc` file to install all dotfiles, including the `rcrc` file
itself. All subsequent commands would be using that file, so it no longer has to
be provided. Note that local config is sourced by providing a tag. The `macos`
tag is for my laptops and the `linux` tag is for my servers.

[rcm]: https://github.com/thoughtbot/rcm
