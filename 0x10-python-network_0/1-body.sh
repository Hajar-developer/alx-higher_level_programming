#!/bin/bash
# Send GET request to URL and display body of response only for status code 200
curl -s -o /dev/null -w "%{http_code}" "$URL"
