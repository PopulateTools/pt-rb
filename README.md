# Populate tools utils

## How to install

1. Clone this repository, let's say in $DEV_DIR/: `git clone git@github.com:ferblape/pt-rb.git`
2. Activate the binary: `ln -s ~/DEV_DIR/pt-rb/pt /usr/local/bin/pt`
3. Check it works: `pt --help`

## Help

```
NAME:

  Populate Tools

DESCRIPTION:

  Populate Tools idem

COMMANDS:

  deploy  Calls deploy bot
  help    Display global or [command] help documentation
  log     Tails a remote log
  pr      Creates a new PR for the current branch
  release Releases a branch to staging

GLOBAL OPTIONS:

  -h, --help
      Display help documentation

  -v, --version
      Display version information

  -t, --trace
      Display backtrace when an error occurs
```
