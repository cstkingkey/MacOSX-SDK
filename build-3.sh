#! /usr/local/bin/bash

for i in $(cat macos-12.txt); do
    cd /Applications/Xcode_"$i".app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs
    ls -la
    rm -rf MacOSX13.sdk
    for j in "$(ls | grep MacOSX | grep -v MacOSX.sdk)"; do
        sudo tar -cJvhf /Users/runner/work/MacOSX-SDK/MacOSX-SDK/xcode/"$j".tar.xz "$j"
    done
done
