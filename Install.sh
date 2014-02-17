cp .vimrc ~/.vimrc
git submodule init
git submodule update

# copy custom snippets
cp snippets/java.snippets bundle/snipmate/snippets/java.snippets
cp snippets/xml.snippets bundle/snipmate/snippets/xml.snippets
