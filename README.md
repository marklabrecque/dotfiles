# Cottser’s dotfiles

Mathias Bynens’ dotfiles with some personal tweaks.

## Notable features

### Drush

This repository includes Drush as a git subtree. If you have git-subtree (and if you use the git that comes with homebrew you do!) then you can easily update Drush: `cd` into your local `dotfiles` repository and run:

```bash
./drushup.sh
```

### Brett Terpstra-esque bash prompt

Includes a slightly tweaked version of the [useful and good-looking prompt](http://brettterpstra.com/my-new-favorite-bash-prompt/) posted by Brett Terpstra in 2009. Follow the link to learn more about it. In short: full path displayed, current time, average CPU load for the past minute, git branch.

### Others

#### Homebrew formulas

* [z](https://github.com/rupa/z) - A fuzzy way to navigate directories on the command line.
* [git-ftp](https://github.com/resmo/git-ftp) - Deploy to (S)FTP from your local git repositories.

#### Aliases

Adds a bunch of git and drush aliases. Some of these are muscle memory, some will eventually be removed because I never use them.

## Installation

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/dotfiles`.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone --recursive https://github.com/Cottser/dotfiles.git && cd dotfiles && ./bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
./bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
./bootstrap.sh -f
```

### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/Cottser/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh}
```

To update later on, just run that command again.

### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as [detecting which version of `ls` is being used](https://github.com/mathiasbynens/dotfiles/blob/aff769fd75225d8f2e481185a71d5e05b76002dc/.aliases#L21-26)) takes place.

Here’s an example `~/.path` file that adds `~/utils` to the `$PATH`:

```bash
export PATH="$HOME/utils:$PATH"
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

My `~/.extra` looks something like this:

```bash
# Git credentials
GIT_AUTHOR_NAME="Scott Reeves"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="scott@example.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

You could also use `~/.extra` to override settings, functions and aliases from my dotfiles repository. It’s probably better to [fork this repository](https://github.com/Cottser/dotfiles/fork_select) instead, though. Or better yet, [fork Mathias’](https://github.com/mathiasbynens/dotfiles/fork_select)!

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common Homebrew formulae (after installing Homebrew, of course):

```bash
./.brew
```

## Feedback

[Ping me on Twitter](http://twitter.com/Cottser).

## Thanks to…

* [Mathias Bynens](http://mathiasbynens.be/) for providing a [great base to work from](https://github.com/mathiasbynens/dotfiles)!