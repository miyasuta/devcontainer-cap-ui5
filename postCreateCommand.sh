#!/bin/bash
# Settings:
# 1. Create .env file and maintain the following parameters;
# GIT_EMAIL=<your Git email>
# GIT_USER_NAME=<your Git user name>

source .env

git config --global user.email "$GIT_EMAIL"
git config --global user.name "$GIT_USER_NAME"
git config --global --add safe.directory $PWD
git config --global init.defaultBranch "main"

echo "GitHub email set to: $GIT_EMAIL"
echo "GitHub username set to: $GIT_USER_NAME"
echo "$PWD has been added to safe directory"