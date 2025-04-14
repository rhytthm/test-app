#!/bin/bash

SCHEME='Test-App'
DESTINATION='platform=iOS Simulator,OS=latest,name=iPhone 16'

xcodebuild test -scheme $SCHEME -sdk iphonesimulator -destination "$DESTINATION" CODE_SIGNING_ALLOWED='NO'