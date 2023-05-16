#!/usr/bin/env bash

set -e

echo "Ensuring we are on proper commit..."
git submodule update --init --checkout --force

cd haskell-language-server/ || exit 1

echo "Applying patch..."
git apply ../costar-hls.patch

echo "Building & installing to ~/.local/bin/..."
stack install haskell-language-server && mv -f ~/.local/bin/haskell-language-server ~/.local/bin/haskell-language-server-9.2.7
