#!/bin/bash

########################################################################
# This script is responsible for bootstrapping a Node app and installing
# the packages that I make use of frequently.
########################################################################

DIR_NAME=node-app-bootstrap;

function bootstrap_node_app() {
  if which node > /dev/null
    then
      mkdir $DIR_NAME;
      cd $DIR_NAME;
      npm init -y > /dev/null;
      npm install express bcryptjs celebrate cors dotenv jsonwebtoken pg;
      npm install -D mocha chai chai-http prettier eslint eslint-config-prettier husky lint-staged nyc nodemon;
      echo node_modules/ > .gitignore
    else
      # improve script by installing node and then rerun
      # script automatically
      exit 1;
  fi
}

bootstrap_node_app
