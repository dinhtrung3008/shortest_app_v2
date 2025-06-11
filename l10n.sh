#!/bin/bash
set -e
flutter clean
flutter pub get
flutter gen-l10n
echo "L10n gen done !!!"