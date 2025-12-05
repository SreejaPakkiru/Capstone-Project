FROM ubuntu:22.04

# Install required tools
RUN apt-get update -y && \
    apt-get install -y curl bash && \
    apt-get clean && \
    mkdir -p /tests

# Copy test scripts
COPY smoke-test.sh /tests/
COPY integration-test.sh /tests/
COPY run-tests.sh /tests/

# Make scripts executable
RUN chmod 777 /tests/*.sh

WORKDIR /tests

# Run all tests
ENTRYPOINT ["/tests/run-tests.sh"]
