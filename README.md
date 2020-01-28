# Populate tools utils

## How to install

1. Clone this repository, let's say in $DEV_DIR/: `git clone git@github.com:PopulateTools/pt-rb.git`
2. Activate the binary: `ln -s ~/DEV_DIR/pt-rb/pt /usr/local/bin/pt`
3. Check it works: `pt --help`
4. Check the help of a command: 

```
$ pt gobierto_data_import --help

  NAME:

    gobierto_data_import

  SYNOPSIS:

    pt gobierto_data_import <gobierto_host> <dataset_name> <table_name> <data_file> [schema_file (optional)]

  DESCRIPTION:

    Imports a dataset in gobierto data. Requires to setup the environment variable GOBIERT_DATA_ADMIN_TOKEN
```

## Available commands

- deploy: calls deploy-bot
- gobierto_data_import: imports a dataset in gobierto data
- log: tails a log in a remote server
- pr: creates a PR in the current branch
- release: merges the current branch into staging and calls deploy
- help: displays help

```
  NAME:

    Populate Tools

  DESCRIPTION:

    Populate Tools idem

  COMMANDS:

    deploy               Calls deploy bot. Requires to setup the environment variable DEPLOY_BOT_TOKEN
    gobierto_data_import Imports a dataset in gobierto data. Requires to setup the environment variable GOBIERT_DATA_ADMIN_TOKEN
    help                 Display global or [command] help documentation
    log                  Tails a remote log
    pr                   Creates a new PR for the current branch
    release              Releases a branch to staging

  GLOBAL OPTIONS:

    -h, --help
        Display help documentation

    -v, --version
        Display version information

    -t, --trace
        Display backtrace when an error occurs

```
