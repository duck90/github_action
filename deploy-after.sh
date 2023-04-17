#!/bin/bash
REPOSITORY=/home/ubuntu/github_action_test

cd $REPOSITORY

sudo pm2 start server.js -n react-app
