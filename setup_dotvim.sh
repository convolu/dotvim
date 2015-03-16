#!/bin/bash
#   Copyright 2015 Costas Voloudakis
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

vimrc_src="$HOME/.vim/.vimrc"
gvimrc_src="$HOME/.vim/.gvimrc"

vimrc_dest="$HOME/.vimrc"
gvimrc_dest="$HOME/.gvimrc"

if [ ! -e "$vimrc_src" ]; then
    >&2 echo "File $vimrc_src does not exist"
    exit 1
else
    if [ -e "$vimrc_dest" ]; then
        while true; do
            read -r -p 'A .vimrc file already exists. Overwrite? [y/n] ' ans
            case "$ans" in
                y|Y) rm "$vimrc_dest"
                     break;;
                n|N) echo "Aborting ..."
                     exit 2;;
                *) echo "Not valid, try again";;
            esac
        done
    fi

    ln -s "$vimrc_src" "$vimrc_dest"

fi


if [ ! -e "$gvimrc_src" ]; then
    >&2 echo "File $gvimrc_src does not exist"
else
    if [ -e "$gvimrc_dest" ]; then
        while true; do
            read -r -p 'A .gvimrc file already exists. Overwrite? [y/n] ' ans
            case "$ans" in
                y|Y) rm "$gvimrc_dest"
                     break;;
                n|N) echo "Aborting ..."
                     exit 2;;
                *) echo "Not valid, try again";;
            esac
        done
    fi

    ln -s "$gvimrc_src" "$gvimrc_dest"

fi

# Fetch submodules
pushd "$HOME/.vim"
git submodule init
git submodule update
popd
