# homebrewのインストール
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

ssh-keygen
cat ~/.ssh/id_rsa.pub 
git config --global user.name prometeo203
git config --global user.email prometeo203@gmail.com

# bash_profileとかの適用
cd ~/
git clone git@github.com:prometeo203/myconfigs.git
ln -s ~/myconfigs/.bash_profile ~/
ln -s ~/myconfigs/.vimrc ~/

# pyenvのインストール
brew install pyenv
brew install pyenv-virtualenv
# 以下二行はconfigファイルに書いておけばいらない
echo 'export PYENV_ROOT=/usr/local/var/pyenv' >> ~/.bash_profile
echo 'if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi' >> ~/.bash_profile

pyenv install 3.6.0
pyenv install 3.6.6

pyenv virtualenv 3.6.0 tensorFlow
pyenv virtualenv 3.6.6 analytics

