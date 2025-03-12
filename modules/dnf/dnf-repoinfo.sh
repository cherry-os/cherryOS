#!/bin/bash

repo_id="$1"

if [ -z "$repo_id" ]; then
  echo "Usage: $0 <repo_id>"
  exit 1
fi

repo_info=$(dnf repoinfo "$repo_id")

if [ $? -ne 0 ]; then
  echo "Error: Failed to get repo information for $repo_id"
  exit 1
fi

echo "{"
echo "  \"$repo_id\": {"
  name=$(echo "$repo_info" | grep -oP "^Repo-name *: *\K.*")
  if [ -n "$name" ]; then
    echo "    \"name\": \"$name\","
  fi

  baseurl=$(echo "$repo_info" | grep -oP "^Repo-baseurl *: *\K.*")
  if [ -n "$baseurl" ]; then
    echo "    \"baseurl\": \"$baseurl\","
  fi

  enabled=$(echo "$repo_info" | grep -oP "^Repo-status *: *\K.*")
  if [ -n "$enabled" ]; then
    if [[ "$enabled" == "enabled" ]]; then
        echo "    \"enabled\": true,"
    else
        echo "    \"enabled\": false,"
    fi
  fi

  gpgcheck=$(echo "$repo_info" | grep -oP "^Repo-gpgcheck *: *\K.*")
  if [ -n "$gpgcheck" ]; then
    if [[ "$gpgcheck" == "enabled" ]]; then
        echo "    \"gpgcheck\": true,"
    else
        echo "    \"gpgcheck\": false,"
    fi
  fi

  gpgkey=$(echo "$repo_info" | grep -oP "^Repo-gpgkey *: *\K.*")
  if [ -n "$gpgkey" ]; then
    echo "    \"gpgkey\": [$(echo "$repo_info" | grep -oP "^Repo-gpgkey *: *\K.*" | tr ' ' ','| sed 's/,$//')],"
  fi
  
  metalink=$(echo "$repo_info" | grep -oP "^Repo-metalink *: *\K.*")
  if [ -n "$metalink" ]; then
    echo "    \"metalink\": \"$metalink\","
  fi

  mirrorlist=$(echo "$repo_info" | grep -oP "^Repo-mirrorlist *: *\K.*")
  if [ -n "$mirrorlist" ]; then
    echo "    \"mirrorlist\": \"$mirrorlist\","
  fi

  count=$(echo "$repo_info" | grep -oP "^Repo-packages *: *\K.*")
  if [ -n "$count" ]; then
    echo "    \"packages\": $count"
  fi

  if [[ "$(tail -c 2 <<< "$(echo "$repo_info")" | head -c 1)" == "," ]]; then
    sed -i '$ s/,$//'
  fi

  echo "  }"
echo "}"