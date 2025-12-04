#!/bin/sh
set -e

echo "Making test scripts executable..."

chmod +x /tests/*.sh

/tests/smoke-test.sh
/tests/integration-test.sh
