#!/bin/bash

# Check if URL argument is provided
if [[ -z $1 ]]; then
  echo "Error: URL argument is missing."
  exit 1
fi

# Make a request to the URL and retrieve the allowed methods
response=$(curl -sI -X OPTIONS "$1" | grep -i "Allow:" | sed 's/Allow: //i')

# Check if any allowed methods are found
if [[ -z $response ]]; then
  echo "No allowed methods found for $1"
else
  echo "Allowed methods for $1: $response"
fi

