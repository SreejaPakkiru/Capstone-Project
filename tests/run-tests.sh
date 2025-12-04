#!/bin/sh
set -e

echo "===== Running Smoke Tests ====="
./smoke-test.sh

echo "===== Running Integration Tests ====="
./integration-test.sh

echo "===== All tests passed successfully! ====="
