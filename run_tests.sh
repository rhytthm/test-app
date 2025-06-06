#!/bin/bash
set -e  # Exit on first error

SCHEME='SwiftUI-TDD'
DESTINATION='platform=iOS Simulator,OS=latest,name=iPhone 16'

echo "🏗️ Running tests in: $(pwd)"
echo "🔍 Looking for .xcodeproj files:"
find . -name "*.xcodeproj"

xcodebuild test \
  -scheme "$SCHEME" \
  -sdk iphonesimulator \
  -destination "$DESTINATION" \
  CODE_SIGNING_ALLOWED=NO
