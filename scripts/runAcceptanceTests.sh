#!/bin/bash

set -o errexit

SCRIPT_URL="https://raw.githubusercontent.com/spring-cloud-samples/brewery/master/acceptance-tests/scripts/runDockerAcceptanceTests.sh"
AT_WHAT_TO_TEST="ZOOKEEPER"

curl "${SCRIPT_URL}" --output runDockerAcceptanceTests.sh

chmod +x runDockerAcceptanceTests.sh

# Run the tests and clean up
./runDockerAcceptanceTests.sh -t "${AT_WHAT_TO_TEST}" -k 1
