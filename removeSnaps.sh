#!/bin/bash

echo "Removing snaps that were used for testing..."

sudo snap remove edgexfoundry && sudo snap remove edgex-app-service-configurable

echo "Removing snaps that were used for testing...Done"
