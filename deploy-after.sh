#!/bin/bash
REPOSITORY=/home/ubuntu/github_action

cd $REPOSITORY

sudo pm2 start server.js -n react-app
