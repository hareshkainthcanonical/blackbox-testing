#!/bin/bash

echo "Setting up a new test environment"
sudo snap set edgexfoundry sys-mgmt-agent=on && sudo snap set edgexfoundry support-scheduler=on && sudo snap set edgexfoundry support-notifications=on && sudo snap set edgexfoundry device-virtual=on

