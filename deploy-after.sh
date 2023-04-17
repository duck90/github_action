#!/bin/bash
REPOSITORY=/home/ubuntu/github_action_test

cd $REPOSITORY

echo "$PWD"

pm3 restart server
