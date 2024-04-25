#!/bin/bash
# Send request to URL and get body size in bytes
BODY_SIZE=$(curl -s -o /dev/null -w '%{size_download}' "$URL")
