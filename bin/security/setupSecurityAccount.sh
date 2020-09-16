#!/bin/bash

option="${1}"

case ${option} in
  -useradd)
  echo "Info: Add security account."

  OT=$(sudo edgexfoundry.security-proxy-setup-cmd --confdir=/var/snap/edgexfoundry/current/config/security-proxy-setup/res --init=false --useradd=testuser --group=admin | grep '^the access token for')
  TOKEN=$(echo $OT | sed 's/.*: \([^.]*\.[^.]*\.[^.]*\).*/\1/')
  export TOKEN

  echo "Generated token: " $TOKEN

  ;;
  -userdel)
  echo "Info: Delete security account."
  sudo edgexfoundry.security-proxy-setup-cmd --init=false --userdel=testuser
  ;;
  *)
  exit 0
  ;;
esac
