#!/bin/bash

sudo snap install edgexfoundry && sudo snap set edgexfoundry sys-mgmt-agent=on && sudo snap set edgexfoundry support-scheduler=on && sudo snap set edgexfoundry support-notifications=on && sudo snap set edgexfoundry device-virtual=on && sudo snap install edgex-app-service-configurable && sudo snap set edgex-app-service-configurable profile=blackbox-tests && sudo snap start edgex-app-service-configurable.app-service-configurable

