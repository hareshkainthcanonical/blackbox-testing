#!/bin/bash

echo "Generating token..."

echo "Use TEST_USER_ACCESS_TOKEN environment variable to consume the generated user access token"

echo "TEST_USER_ACCESS_TOKEN = " $TEST_USER_ACCESS_TOKEN

TOKEN=$(echo $TEST_USER_ACCESS_TOKEN | sed 's/.*: \([^.]*\.[^.]*\.[^.]*\).*/\1/')

export TOKEN

echo "Use TOKEN_ONLY environment variable to consume the generated access token"

echo "TOKEN_ONLY = " $TOKEN

echo "Generating token...Done"
