#!/bin/bash
set -e 
sudo yum install -y vim
sudo sed -i 's/#\PermitRootLogin\ \yes/PermitRootLogin\ \yes/g' /etc/ssh/sshd_config
sudo systemctl restart sshd
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCrCrW/11iKW2QTKMJyBJY9AJbnPT6QzupkXARXIKDj0NsubjOGVLl3drfK1jWRrFa3JDecYaoHAzTriGa0nwD2DyyO3hBr8Q5feXvSFS9OXnaFI5L74lxSpVlPNTCrPVtJLLlMgHUx9boakHMJWFCjBbcyBO5t9PXMhfLqjICPxJMlvK1KCvEnmCd1LXhsxh/hmXr8WtGlriqJBGH5tNb+X3+bx2RP/NiegG52QqkOFwHKm09vSIY15L9/AAWOxiFKYVzutgT4BgQMBZKWS2o1zvs1+nGyrWvGdYUJz/trpg5XbYdxWJz++Jh2dLHr0OggnbZ+CHGACBcjSxt2aDVF" >> ~/.ssh/authorized_keys