#!/bin/sh

# Exit on error
set -x

echo "### Luapress"

VERSION=`cat luapress/config.lua | grep version | grep -oEi "[0-9]+\.[0-9]+\.?[0-9]*"`
ROCKSPEC="luapress-${VERSION}-*.rockspec"

# Ensure rockspec in sync w/ config.lua
if [ ! -f $ROCKSPEC ]; then
    echo "--> Missing rockspec: ${ROCKSPEC}"
    exit 1
fi

# Ensure tests pass
echo "--> Running tests..."
scripts/test.sh

echo "--> Releasing: v$VERSION"

# Tag
git tag -a "v$VERSION" -m "v$VERSION"

# Push
git push --tags

# Upload rockspec?

echo "--> Done!"
