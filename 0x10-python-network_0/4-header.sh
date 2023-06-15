#!/bin/bash
# Takes a URL, sends GET request, displays body of response
curl -sX GET -H "X-School-User-Id: 98" "$1"
