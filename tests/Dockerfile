FROM ubuntu:22.04

# Install required tools
RUN apt-get update -y && \
    apt-get install -y curl bash && \
    mkdir -p /tests

# Copy test scripts
COPY smoke-test.sh /tests/
COPY integration-test.sh /tests/
COPY run-tests.sh /tests/

# Make scripts executable
RUN chmod +x /tests/*.sh

WORKDIR /tests

# Default command runs all tests
CMD ["/tests/run-tests.sh"]
