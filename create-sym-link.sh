#!/usr/bin/env bash

SETTINGS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Creates a symlink to a file in the settings repository
# $1 - the name of the file to create a symlink for
# $2 - optional name of directory within the settings repository
createLink() {
    if [ $# -eq 0 ]; then
        echo "No argument provided. Usage: createLink .configFile"
    else
        FILEPATH=$('pwd')/$1

        # Move original file to the settings repository. Add quotes to hanlle spaces in path.
        # If $2 is provided, use it as the directory name
        if [ $# -eq 2 ]; then
            LINKPATH=$SETTINGS_DIR/$2/$1
            # Create the directory if it doesn't exist
            if [ ! -d "$SETTINGS_DIR/$2" ]; then
                mkdir "$SETTINGS_DIR/$2"
            fi
        else
            LINKPATH=$SETTINGS_DIR/$1
        fi

        mv "$FILEPATH" $LINKPATH

        # Create symlink
        ln -s $LINKPATH "$FILEPATH"

        echo "Created symlink from '$LINKPATH' to '$FILEPATH'"

        # Append this link to the .link_history file
        echo "$1 - $FILEPATH" >> $SETTINGS_DIR/.link_history
    fi
}
