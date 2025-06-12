#!/bin/bash
set -e
flutter clean
flutter pub get
cd ios
pod install --repo-update
echo "Create Podfile.lock successfully !!!"