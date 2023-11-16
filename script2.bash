#!/bin/bash

# Rename folders from cMMDD to c23MMDD
for folder in c[0-1][0-9][0-3][0-9]; do
    if [[ -d $folder && $folder =~ ^c([0-1][0-9])([0-3][0-9])$ ]]; then
        new_folder="c23${BASH_REMATCH[1]}${BASH_REMATCH[2]}"
        mv "$folder" "$new_folder"
        echo "Renamed $folder to $new_folder"
    fi
done

echo "Folder renaming completed."
