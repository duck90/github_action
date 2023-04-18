if [ -d /home/ubuntu/github_action ]; then
    pm2 kill -n react-app
    sudo rm -rf /home/ubuntu/github_action/
fi
sudo mkdir -vp /home/ubuntu/github_action/