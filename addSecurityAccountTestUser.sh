#!/bin/bash

echo "Adding security account for testuser..."

TEST_USER_ACCESS_TOKEN=$(sudo edgexfoundry.security-proxy-setup-cmd --confdir=/var/snap/edgexfoundry/current/config/security-proxy-setup/res --init=false --useradd=testuser --group=admin | grep '^the access token for')

export TEST_USER_ACCESS_TOKEN

echo "TEST_USER_ACCESS_TOKEN = " $TEST_USER_ACCESS_TOKEN

echo "Adding security account for testuser...Done"
