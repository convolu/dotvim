# Installation:

```bash
git clone git://github.com/convolu/dotvim.git ~/.vim
```
# Configure:

## Automatically
```bash
~/.vim/setup_dotvim.sh
```

## Manually:
### Create symlinks:
```bash
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.gvimrc ~/.gvimrc
```
### Switch to the `~/.vim` directory, and fetch submodules:

```bash
cd ~/.vim
git submodule init
git submodule update
```

Done using instructions from http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

