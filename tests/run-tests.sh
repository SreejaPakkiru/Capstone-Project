#!/bin/bash

echo "Waiting for web1 and web2 to be ready..."

# Wait for web1
until curl -s http://web1:5000 > /dev/null; do
  echo "Waiting for web1..."
  sleep 2
done

# Wait for web2
until curl -s http://web2:5000 > /dev/null; do
  echo "Waiting for web2..."
  sleep 2
done

echo "Services are up! Running smoke tests..."

chmod +x /tests/smoke-test.sh

# Run smoke tests only
/tests/smoke-test.sh
