#!/bin/bash

NAMESFILE=$(dirname "$0")/files.sh

COLLECTION_PATH="collections/core-command.postman_collection.json"

if [ "$NATIVE_TEST_ENV" = "true" ]; then
  echo "Testing against native EdgeX"
  ENV_PATH="environment/core-command.postman_environment.json"
else
  echo "Testing against docker EdgeX"
  ENV_PATH="environment/core-command-docker.postman_environment.json"
fi


if [ -f $NAMESFILE ]; then 

	. $NAMESFILE

else 
	echo "Error: Names file does not exist."
	exit $?

fi

echo "Info: Initiating Command Test."
echo "ENV_PATH = "$ENV_PATH

echo "[info] ---------- use docker-compose run newman ----------"

docker-compose -f ${docker_compose_test_tools} run --rm postman run ${COLLECTION_PATH} \
    --folder="device" --iteration-data="data/coreCommandData.json" --environment=${ENV_PATH} \
    --reporters="junit,cli"

docker-compose -f ${docker_compose_test_tools} run --rm postman run ${COLLECTION_PATH} \
    --folder="device_error_4xx" --iteration-data="data/coreCommandData.json" --environment=${ENV_PATH} \
    --reporters="junit,cli"

#docker run --rm -v ~/${TEST_DIR}/postman-test/:/etc/newman --network=${DOCKER_NETWORK} postman/newman_ubuntu1404 run "${COLLECTION_PATH}" \
#    --folder="device" --iteration-data="data/coreCommandData.json" --environment="${ENV_PATH}" \
#    --reporters="junit,cli"
#docker run --rm -v ~/${TEST_DIR}/postman-test/:/etc/newman --network=${DOCKER_NETWORK} postman/newman_ubuntu1404 run "${COLLECTION_PATH}" \
#    --folder="device_error_4xx" --iteration-data="data/coreCommandData.json" --environment="${ENV_PATH}" \
#    --reporters="junit,cli"


#newman run $CORECOMMANDCOLLFILE --folder device -d $CORECOMMANDDATAFILE -e $CORECOMMANDENVFILE -r cli,html --reporter-html-export $DEVICECCREPORT200FILE
#
#newman run $CORECOMMANDCOLLFILE --folder device_error_4xx -d $CORECOMMANDDATAFILE -e $CORECOMMANDENVFILE -r cli,html --reporter-html-export $DEVICECCREPORT4XXFILE

echo "Info:Command Test Completed."
