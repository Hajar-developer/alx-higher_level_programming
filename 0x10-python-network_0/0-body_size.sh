#!/bin/bash
# Send request to URL and get body size in bytes
curl -sw '%{size_download}\n' -o /dev/null "$1"
