#!/bin/bash
flutter pub cache clean --force
flutter clean
flutter pub get
flutter build web --no-tree-shake-icons
