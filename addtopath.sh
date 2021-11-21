#!/bin/bash
echo "Adding to path... Please wait..."
echo ";export PATH=$PATH:$PWD" >> ~/.zshrc
echo ";export PATH=$PATH:$PWD" >> ~/.bashrc
cp com-mithelper.sh clicommitr
chmod +x clicommitr
sed -i "s/magic/$\(echo '$(echo $PWD | base64)' | base64 --decode\)/g" clicommitr