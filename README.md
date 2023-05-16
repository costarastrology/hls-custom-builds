# Haskell Language Server Custom Builds

This repo contains the haskell-language-server along with a patch that modifies
it's dependency versions to match the code verification we do in CI.

It ensure HLS is built with `formolu-0.10.1.0` & `hlint-3.5`.

Run the `install.sh` script to pull the proper upstream code, apply the patch,
build the language server, & install it to `~/.local/bin/`.
