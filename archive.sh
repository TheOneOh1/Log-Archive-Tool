#! /bin/bash

dt=$(date +%Y%m%d_%H%M%S)

echo "Directory you want to archieve is: $1"

if [ -d "$1" ]; then
    echo "Directory exists!"
    echo "Archiving $1..."
    new_dir="$1"_"$dt"
    tar -czvf "$new_dir".tar.gz "$1"
    echo "Archive complete $new_dir.tar.gz"
else
    echo "Directory does not exist"
fi