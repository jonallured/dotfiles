# Jon Allured's Dot Files

I use [rcm] to manage my dotfiles, it's great!

## Install

Start by cloning down this repo and then running something like this:

```
$ env RCRC=$HOME/code/dotfiles/rcm/rcrc rcup
```

This will use the `rcrc` file to install all dotfiles, including the `rcrc` file
itself. All subsequent commands would be using that file, so it no longer has to
be provided.

[rcm]: https://github.com/thoughtbot/rcm
