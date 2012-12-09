openvims
========
open vim scripts

use step:

1.    git clone https://github.com/openproject/openvims.git .vim

2.    git submodule init

3.    git submodule update

4. execute the Install.sh will override your .vimrc by openvims .vimrc

if you want to add else vim-scripts, you can do it yourself like this:

    git submodule add https://github.com/scrooloose/nerdcommenter.git bundle/nerdcommenter
