#!/bin/bash

for entry in /home/*; do
  if [ -d "$entry" ]; then
    directory_name=$(basename "$entry")
    chsh -s /bin/cshell $directory_name
  fi
done