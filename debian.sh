#!/bin/bash

set -e

if [[ x`lsb_release -is` != xDebian ]]; then
	echo "Only Debian is supported"
	exit 1
fi

rel=`lsb_release -rs | cut -d. -f1`
if [[ $rel -ne 8 ]]; then
	echo "Only Debian 8 is tested"
	exit 1
fi

apt-get install build-essential vim-nox git python-dev cmake libclang-dev \
	ruby ri ctags cscope
git submodule update --init --recursive
cd src/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
