#!/bin/bash

output=$(dnf repoinfo $1 2>/dev/null)

repos=$(echo "$output" | awk '/Repo-id/ {id=$2} /Repo-name/ {name=$2; for (i=3; i<=NF; i++) name=name" "$i} /Repo-status/ {status=$2; printf("{\"id\":\"%s\", \"name\":\"%s\", \"status\":%s},\n", id, name, (status=="enabled" ? "true" : "false"))}')

echo "["
echo "$repos" | sed '$ s/,$//'
echo "]"