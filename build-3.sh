#! /usr/local/bin/bash

for i in $(cat macos-12.txt); do cd /Applications/Xcode_"$i".app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs; for j in "$(ls | grep -v MacOSX.sdk)"; do sudo tar -cvhf /Users/runner/work/MacOSX-SDK/MacOSX-SDK/xcode/"$j".tar "$j"; done; done
