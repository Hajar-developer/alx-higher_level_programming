#!/bin/bash
# Send request to URL and get body size in bytes
curl -s -o /dev/null -w '%{size_download}' "$URL"
