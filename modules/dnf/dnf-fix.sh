#!/bin/bash

output=$(dnf repo list --all 2>/dev/null)

if [ $? -ne 0 ]; then
    echo "Error: Unable to retrieve the repository list. Make sure dnf is installed and configured correctly."
    exit 1
fi

lines=$(echo "$output" | tail -n +3)

echo "["

first_entry=true
echo "$lines" | while read -r line; do
    repo_id=$(echo "$line" | awk '{print $1}')
    status=$(echo "$line" | awk '{print $NF}')
    repo_name=$(echo "$line" | awk '{$1=""; $NF=""; print $0}' | sed -e 's/^ *//g' -e 's/ *$//g')

    if [ "$first_entry" = true ]; then
        first_entry=false
    else
        echo ","
    fi

    echo "  {"
    echo "    \"id\": \"$repo_id\","
    echo "    \"name\": \"$repo_name\","
    echo "    \"status\": \"$status\""
    echo "  }"
done

echo "]"