#!/bin/sh
set -e

echo "Making test scripts executable..."
chmod 777 ./smoke-test.sh
chmod 777 ./integration-test.sh
echo "===== Running Smoke Tests ====="
./smoke-test.sh

echo "===== Running Integration Tests ====="
./integration-test.sh

echo "===== All tests passed successfully! ====="
