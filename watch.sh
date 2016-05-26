#!/usr/bin/env bash
# if fswatch detects changes in the docs folder it runs the build script
fswatch -o ./docs | xargs -n1 ./build.sh chapters
