if [ -d /home/ubuntu/github_action_test ]; then
    pm2 kill -n react-app
    sudo rm -rf /home/ubuntu/github_action_test/
fi
sudo mkdir -vp /home/ubuntu/github_action_test/