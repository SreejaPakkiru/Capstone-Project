#!/bin/bash
set -e

# Integration test via Nginx + Redis

# Getting initial response from Nginx
initial=$(curl -s http://nginx/)

# Make another request to increment counter
curl -s http://nginx/ > /dev/null

# Get updated response
updated=$(curl -s http://nginx/)

# Simple validation: check if updated response is different from initial
if [ "$initial" != "$updated" ]; then
    echo "Integration test passed"
    echo "Initial response: $initial"
    echo "Updated response: $updated"
else
    echo "Integration test failed"
    echo "Initial response: $initial"
    echo "Updated response: $updated"
    exit 1
fi
