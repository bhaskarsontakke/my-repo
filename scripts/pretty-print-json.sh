#!/bin/bash

# This is for normalizing the formatting of the JSON files that are downloaded from the API, for easier comparison.
# `cd` into the directory where the JSON files are located, then run this script.
# Usually you can run it like this:  ../../scripts/pretty-print-json.sh

# For every JSON file in the directory, pretty-print it and overwrite the original file.
for file in *.json; do
  if [ -f "$file" ]; then
    echo "Pretty-printing $file..."
    jq . "$file" > "${file%.json}-pretty.json" && mv "${file%.json}-pretty.json" "$file"
  fi
done
