#!/bin/sh
set -e
export HOMEBREW_NO_INSTALL_CLEANUP=1
brew install node cocoapods || true
cd "$CI_PRIMARY_REPOSITORY_PATH"
npm ci || npm install
npx cap copy ios
cd ios/App
pod install
