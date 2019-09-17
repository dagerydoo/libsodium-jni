#!/bin/bash -ev

set -ev

. ./setenv.sh

rm -rf libsodium

git submodule init
git submodule sync
#git submodule update --remote --merge
git submodule update

pushd libsodium

#git fetch && git checkout stable
#git reset --hard origin/stable
git fetch && git checkout public-pbkdf2
git reset --hard origin/public-pbkdf2
git pull
popd
