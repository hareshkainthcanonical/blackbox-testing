#!/bin/bash

COLLECTION_PATH="collections/core-data-importer.postman_collection.json"

if [ "$NATIVE_TEST_ENV" = "true" ]; then
  ENV_PATH="environment/core-data.postman_environment.json"
else
  ENV_PATH="environment/core-data-docker.postman_environment.json"
fi


echo "Info: import Coredata's test data."

docker-compose -f ${docker_compose_test_tools} run --rm postman run ${COLLECTION_PATH} --environment=${ENV_PATH}

echo "Info: Coredata's test data imported"
