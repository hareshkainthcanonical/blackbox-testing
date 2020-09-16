#!/bin/bash

OT=$(sudo edgexfoundry.security-proxy-setup-cmd --confdir=/var/snap/edgexfoundry/current/config/security-proxy-setup/res --init=false --useradd=jerry --group=admin | grep '^the access token for')
TOKEN=$(echo $OT | sed 's/.*: \([^.]*\.[^.]*\.[^.]*\).*/\1/')
export TOKEN
echo "Generated token: " $TOKEN

RT=$(sudo sh -c "cat /var/snap/edgexfoundry/current/secrets/edgex-security-proxy-setup/secrets-token.json")
VAULTKEY=$(echo $RT | sed 's/.*"client_token":"\([^"]*\)".*/\1/')
export VAULTKEY

echo VAULT_KEY: $VAULTKEY
echo "Generated vault key: " VAULT_KEY

echo "Info:Securityservice Setup Completed."

