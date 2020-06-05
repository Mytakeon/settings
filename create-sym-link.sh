#!/usr/bin/env bash

SETTINGS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FILEPATH=$('pwd')/$1

# Move original file to the settings repository. Add quotes to hanlle spaces in path.
mv "$FILEPATH" $SETTINGS_DIR
# Create symlink
ln -s $SETTINGS_DIR/$1 "$FILEPATH"

echo "Created symlink from '$SETTINGS_DIR/$1' to '$FILEPATH'"
