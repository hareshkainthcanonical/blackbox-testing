#!/bin/bash

echo "Info: Clean Securityservice's test data."
edgexfoundry.security-proxy-setup-cmd --init=false --userdel=jerry
echo "Info: Securityservice's test data Cleaned"
