#!/bin/bash
# sends a Get request to a given URL and display the response status code.
curl -sw '%{http_code}' -o /dev/null "$1"
