#!/bin/sh
set -e
echo "Setting permissions on test scripts..."

chmod 777 /tests/run-tests.sh
chmod 777 /tests/smoke-test.sh
chmod 777 /tests/integration-test.sh

/tests/smoke-test.sh
/tests/integration-test.sh
