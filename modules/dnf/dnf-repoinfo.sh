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

  repo_id_val=$(echo "$repo_info" | grep -oP "^Repo-id *: *\K.*")
  if [ -n "$repo_id_val" ]; then
    echo "    \"repo-id\": \"$repo_id_val\","
  fi

  repo_name=$(echo "$repo_info" | grep -oP "^Repo-name *: *\K.*")
  if [ -n "$repo_name" ]; then
    echo "    \"repo-name\": \"$repo_name\","
  fi

  repo_status=$(echo "$repo_info" | grep -oP "^Repo-status *: *\K.*")
  if [ -n "$repo_status" ]; then
    if [[ "$repo_status" == "enabled" ]]; then
      echo "    \"repo-status\": true,"
    else
      echo "    \"repo-status\": false,"
    fi
  fi

  repo_revision=$(echo "$repo_info" | grep -oP "^Repo-revision *: *\K.*")
  if [ -n "$repo_revision" ]; then
    echo "    \"repo-revision\": \"$repo_revision\","
  fi

  repo_updated=$(echo "$repo_info" | grep -oP "^Repo-updated *: *\K.*")
  if [ -n "$repo_updated" ]; then
    echo "    \"repo-updated\": \"$repo_updated\","
  fi

  repo_pkgs=$(echo "$repo_info" | grep -oP "^Repo-pkgs *: *\K.*")
  if [ -n "$repo_pkgs" ]; then
    echo "    \"repo-pkgs\": $repo_pkgs,"
  fi

  repo_available_pkgs=$(echo "$repo_info" | grep -oP "^Repo-available-pkgs *: *\K.*")
  if [ -n "$repo_available_pkgs" ]; then
    echo "    \"repo-available-pkgs\": $repo_available_pkgs,"
  fi

  repo_size=$(echo "$repo_info" | grep -oP "^Repo-size *: *\K.*")
  if [ -n "$repo_size" ]; then
    echo "    \"repo-size\": \"$repo_size\","
  fi

  repo_metalink=$(echo "$repo_info" | grep -oP "^Repo-metalink *: *\K.*")
  if [ -n "$repo_metalink" ]; then
    echo "    \"repo-metalink\": \"$repo_metalink\","
  fi

  updated=$(echo "$repo_info" | grep -oP "^Updated *: *\K.*")
  if [ -n "$updated" ]; then
    echo "    \"updated\": \"$updated\","
  fi

  repo_baseurl=$(echo "$repo_info" | grep -oP "^Repo-baseurl *: *\K.*")
  if [ -n "$repo_baseurl" ]; then
    echo "    \"repo-baseurl\": \"$repo_baseurl\","
  fi

  repo_expire=$(echo "$repo_info" | grep -oP "^Repo-expire *: *\K.*")
  if [ -n "$repo_expire" ]; then
    echo "    \"repo-expire\": \"$repo_expire\","
  fi

  repo_filename=$(echo "$repo_info" | grep -oP "^Repo-filename *: *\K.*")
  if [ -n "$repo_filename" ]; then
    echo "    \"repo-filename\": \"$repo_filename\""
  fi

  if [[ "$(tail -c 2 <<< "$(echo "$repo_info")" | head -c 1)" == "," ]]; then
    sed -i '$ s/,$//'
  fi

  echo "  }"
echo "}"