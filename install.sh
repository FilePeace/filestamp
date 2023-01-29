#!/bin/sh

echo "Installing folderstamp..." && echo "- Installing folderstamp command in /usr/bin..."
sudo cp -f folderstamp /usr/bin
echo "- Turning folderstamp into an executable..."
sudo chmod +x /usr/bin/folderstamp
