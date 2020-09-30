#!/bin/bash

COLLECTION_PATH="collections/core-command-importer.postman_collection.json"
ENV_PATH="environment/core-metadata.postman_environment.json"


echo "Info: import CoreCommand's test data."

docker-compose -f ${docker_compose_test_tools} run --rm postman run ${COLLECTION_PATH} --environment=${ENV_PATH}

echo "Info: CoreCommand's test data imported"
