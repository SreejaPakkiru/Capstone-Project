#!/bin/bash
# Integration test example

echo "Running integration tests inside $(hostname)..."

# Example: Check if web app can connect to Redis
curl -s http://localhost:5000/test-redis | grep "Connected" && echo "Integration test passed" || exit 1
