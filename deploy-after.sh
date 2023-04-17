#!/bin/bash
REPOSITORY=/home/ubuntu/github_action_test

cd $REPOSITORY

echo "$PWD"

pm2 restart server
