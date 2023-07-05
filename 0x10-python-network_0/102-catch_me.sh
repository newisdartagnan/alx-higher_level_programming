#!/bin/bash
#
curl -sX PUT -H "Content-Type: application/json" -d @"$2" "$1"
