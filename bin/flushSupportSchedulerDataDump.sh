#!/bin/bash

COLLECTION_PATH="collections/support-scheduler-cleaner.postman_collection.json"
ENV_PATH="environment/support-scheduler.postman_environment.json"


echo "Info: Clean Support Scheduler's test data."

docker-compose -f ${docker_compose_test_tools} run --rm postman run ${COLLECTION_PATH} --environment=${ENV_PATH}

echo "Info: Support Scheduler's test data Cleaned"
