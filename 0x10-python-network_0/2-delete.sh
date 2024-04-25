#!/bin/bash
# sends a DELETE request to the URL passed as the first argument and displays the bodyof the response
curl -sX DELETE "$1"
