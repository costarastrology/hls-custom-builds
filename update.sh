#!/usr/bin/env bash

set -e

echo "Ensuring submodule is clean..."
git submodule update --init --checkout --force

cd haskell-language-server/ || exit 1

echo "Updating submodule..."
git pull origin master

echo "Applying patch..."
git apply ../costar-hls.patch

echo "Building & installing to ~/.local/bin/..."
stack install haskell-language-server && mv -f ~/.local/bin/haskell-language-server ~/.local/bin/haskell-language-server-9.2.7

echo "Saving patch..."
git diff > ../costar-hls.patch

echo "Success, ready to commit!"
