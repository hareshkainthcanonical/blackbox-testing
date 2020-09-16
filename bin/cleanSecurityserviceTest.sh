#!/bin/bash

echo "Info: Clean Securityservice's test data."
sudo edgexfoundry.security-proxy-setup-cmd --init=false --userdel=testuser
echo "Info: Securityservice's test data Cleaned"
