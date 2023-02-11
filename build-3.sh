#! /usr/local/bin/bash

for i in $(cat macos-12.txt); do cd /Applications/Xcode_"$i".app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs; for j in "$(ls | grep MacOSX.sdk)"; do sudo tar -cJvhf /Users/runner/work/MacOSX-SDK/MacOSX-SDK/xcode/"$j".tar.xz "$j"; done; done
