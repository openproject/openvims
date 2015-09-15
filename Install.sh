cp .vimrc ~/.vimrc
git submodule init
git submodule update

# copy custom snippets
# cp snippets/java.snippets bundle/snipmate/snippets/java.snippets
# cp snippets/xml.snippets bundle/snipmate/snippets/xml.snippets

# powerline fancy font
mkdir ~/.fonts
cp ~/.vim/fonts/* ~/.fonts
fc-cache -vf ~/.fonts

# 终端配置powerline样式的方法：
# 使用python配置powerline fancy font
# 1. 安装pip
#    a. https://pypi.python.org/pypi/pip
#    b. python setup.py install
# 2. 安装powerline
#    a. pip install powerline-status
#    b. 添加代码到~/.zshrc
#       if test $(which pip)
#       then
#           export POWERLINE_ROOT="/usr/local/lib/python2.7/dist-packages/powerline"
#           . ${POWERLINE_ROOT}/bindings/zsh/powerline.zsh
#       fi
# 3. 配置终端字体
#    a. 选择Meslo LG S DZ for Powerline
# 4. 终端和vim都会出现powerline样式了
