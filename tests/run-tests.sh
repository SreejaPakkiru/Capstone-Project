#!/bin/sh
set -e
echo "Setting permissions on test scripts..."

chmod 777 /tests/*.sh


# echo "Setting permissions on test scripts..."
# chmod +x /tests/*.sh

echo "Running smoke tests..."
/tests/smoke-test.sh

echo "Running integration tests..."
/tests/integration-test.sh

echo "All tests passed!"
