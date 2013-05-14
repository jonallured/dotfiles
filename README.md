# Jon Allured's Local Dot Files

I use the [Hashrocket dot files](https://github.com/hashrocket/dotmatrix) and
then add my own local over-rides with this project.

## Install

Use the provided Rake task to symlink all files found in the `files` folder over
to your home folder:

```
$ rake install
```

NOTE: this task will remove any dot files it finds, so if you don't want to lose
what's already there, back them up before you run the task.
