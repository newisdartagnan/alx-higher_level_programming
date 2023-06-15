#!/bin/bash
# Takes a URL and ndisplays all HTTP methods server accepts
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi
curl -sI "$1" | grep Allow: | cut -d ' ' -f 2-
