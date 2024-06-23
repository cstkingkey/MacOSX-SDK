#! /usr/local/bin/bash

for i in $(cat ${config}); do
    cd /Applications/Xcode_"$i".app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs
    ls -la
    rm -rf MacOSX13.sdk
    rm -rf MacOSX14.sdk
    rm -rf MacOSX15.sdk
    for j in "$(ls | grep MacOSX | grep -v MacOSX.sdk)"; do
        sudo tar -cJhf /Users/runner/work/MacOSX-SDK/MacOSX-SDK/xcode/"$j".tar.xz "$j"
    done
done