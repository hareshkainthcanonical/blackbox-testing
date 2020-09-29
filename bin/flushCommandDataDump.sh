#!/bin/bash

COLLECTION_PATH="collections/core-command-cleaner.postman_collection.json"

if [ "$NATIVE_TEST_ENV" = "true" ]; then
  ENV_PATH="environment/core-command.postman_environment.json"
else
  ENV_PATH="environment/core-command-docker.postman_environment.json"
fi

echo "Info: Clean CoreCommand's test data."
echo "ENV_PATH = "$ENV_PATH

docker-compose -f ${docker_compose_test_tools} run --rm postman run ${COLLECTION_PATH} --environment=${ENV_PATH}

echo "Info: CoreCommand's test data Cleaned"
