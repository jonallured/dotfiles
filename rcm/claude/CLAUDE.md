# Working with Jon

These apply in every project.

## Commands Jon runs himself

- Put every command you hand him on his clipboard with `pbcopy`, as well as
  showing it, and say it's there. Write the block to a scratch file first so
  the quoting survives, then `pbcopy < file`. One block per hand-off, and never
  a secret.
- When walking him through setup, give one step at a time and wait for his
  result before the next.
- A command that would act with his own or account-wide credentials (root
  keys, his personal cloud login) is his to run. Hand it to him and say what
  it prints. A scoped credential set up for the agent's work is fine to use
  directly.

## Git

- `push.default` is `upstream`, so a branch cut from `origin/main` pushes
  straight to `main`. Cut branches with `--no-track`, push with
  `git push -u origin HEAD:refs/heads/<branch>`, and check
  `git config branch.<branch>.merge` isn't `refs/heads/main` before the first
  push.

## Machine config

- Shell and tool config lives in `~/code/dotfiles` and is linked into place by
  rcm, so `~/.zshrc` and friends are symlinks. Never let an installer replace
  them with regular files. Warn before suggesting an installer that edits shell
  rc files, and put PATH and env changes in the dotfiles repo instead.
