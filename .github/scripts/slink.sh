# ln -s https://raw.githubusercontent.com/kamalabhishek/repo3/main/docs.md content/product/docs.md

#!/bin/bash

# Create the directory if it doesn't exist
mkdir -p "content/product/"

# Debugging: Print the content of files.json
echo "Content of files.json:"
cat files.json

# Function to fetch files from a repository
fetch_files() {
    local repo=$1
    local key=$2
    local value=$3
    local token=$4

    echo "Fetching file from repo: $repo, key: $key, value: $value"

    # Use curl to download the file from the specified repo
    curl -LJO -u "$token":x-oauth-basic "https://raw.githubusercontent.com/kamalabhishek/$repo/main/$value"

    # Move the downloaded file to the specified directory in hbook
    mv "$value" "$key"
}

# Read the JSON file and fetch files
while IFS= read -r line; do
    repo=$(echo "$line" | jq -r '.repo')
    key=$(echo "$line" | jq -r '.key')
    value=$(echo "$line" | jq -r '.value')

    echo "Read from JSON: repo=$repo, key=$key, value=$value"

    fetch_files "$repo" "$key" "$value" "$TEST_TOKEN"
done < files.json


