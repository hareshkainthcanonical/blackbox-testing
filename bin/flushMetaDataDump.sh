#!/bin/bash

COLLECTION_PATH="collections/core-metadata-cleaner.postman_collection.json"
ENV_PATH="environment/core-metadata.postman_environment.json"


echo "Info: Clean CoreMetadata's test data."

docker-compose -f ${docker_compose_test_tools} run --rm postman run ${COLLECTION_PATH} --environment=${ENV_PATH}

echo "Info: CoreMetadata's test data Cleaned"
