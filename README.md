# Populate tools utils

## How to install

1. Clone this repository, let's say in `$DEV_DIR`: `cd $DEV_DIR; git clone git@github.com:PopulateTools/pt-rb.git`
2. Build the gem `gem build pt.gemspec`
3. Install the gem `gem install pt-1.0.0.gem`
4. Check it works: `pt --help`

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

- ci: Opens current project branch in CircleCI
- deploy: calls deploy-bot
- gobierto_data_import: imports a dataset in gobierto data
- log: tails a log in a remote server
- pr: creates a PR in the current branch
- release: merges the current branch into staging and calls deploy
- gh: github project links
- help: displays help

```
  NAME:

    Populate Tools

  DESCRIPTION:

    Populate Tools idem

  COMMANDS:

    ci                   Opens current project branch in CircleCI
    deploy               Calls deploy bot. Requires to setup the environment variable DEPLOY_BOT_TOKEN
    gh                   Opens the github page of the current project
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
