#!/bin/bash
REPOSITORY=/home/ubuntu/github_action_test

cd $REPOSITORY

pm2 restart server
