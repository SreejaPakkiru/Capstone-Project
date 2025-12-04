#!/bin/sh
set -e

echo "Making test scripts executable..."
chmod +x /tests/*.sh

echo "===== Running Smoke Tests ====="
./smoke-test.sh

echo "===== Running Integration Tests ====="
./integration-test.sh

echo "===== All tests passed successfully! ====="
