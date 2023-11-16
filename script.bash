#!/bin/bash

# Navigate to the directory containing the folders
# cd /path/to/your/directory || exit

# Rename folders from YYYYMMDD to cYYMMDD
for folder in *; do
    if [[ -d $folder && $folder =~ c^([0-9]{4})([0-9]{2})([0-9]{2})$ ]]; then
        new_folder="c23${BASH_REMATCH[2]}${BASH_REMATCH[3]}"
        mv "$folder" "$new_folder"
        echo "Renamed $folder to $new_folder"
    fi
done

echo "Folder renaming completed."
