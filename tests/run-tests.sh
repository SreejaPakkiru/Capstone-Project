#!/bin/bash
set -e

echo "🚀 Starting test runner..."

# # ---- Wait for web1 ----
# echo "Waiting for web1..."
# until curl -s http://web1:5000 > /dev/null; do
#   echo "web1 not ready, retrying..."
#   sleep 2
# done
# echo "web1 is ready!"

# # ---- Wait for web2 ----
# echo "Waiting for web2..."
# until curl -s http://web2:5000 > /dev/null; do
#   echo "web2 not ready, retrying..."
#   sleep 2
# done
# echo "web2 is ready!"

# # ---- Wait for nginx ----
# echo "Waiting for nginx..."
# until curl -s http://nginx/ > /dev/null; do
#   echo "nginx not ready, retrying..."
#   sleep 2
# done
# echo "nginx is ready!"

# echo "✔ All services are up — starting tests..."

chmod +x /tests/smoke-test.sh
chmod +x /tests/integration-test.sh

echo "🔥 Running Smoke Tests..."
/tests/smoke-test.sh

echo "🧪 Running Integration Tests..."
/tests/integration-test.sh

echo "✅ All tests passed successfully!"
