  
#Gitインストール
sudo yum install git -y

#Nodeインストール
wget git.io/nodebrew
perl nodebrew setup
echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
nodebrew install-binary v6.11.5
nodebrew use v6.11.5

#Firebaseインストール
npm i -g firebase-tools -y
npm i eslint-plugin-promise@latest --save-dev

#version表示
node --version
firebase --version

echo "setup finish"
