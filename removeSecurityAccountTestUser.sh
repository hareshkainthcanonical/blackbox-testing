#!/bin/bash

echo "Removing security account..."

sudo edgexfoundry.security-proxy-setup-cmd --confdir=/var/snap/edgexfoundry/current/config/security-proxy-setup/res --init=false --userdel=testuser

echo "Removing security account...Done"
