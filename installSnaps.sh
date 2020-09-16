#!/bin/bash

echo "Installing the required snaps for testing..."

echo "Will install edgexfoundry (edge)..."

sudo snap install edgexfoundry --edge

echo "Will install edgex-app-service-configurable (stable)..."

sudo snap install edgex-app-service-configurable --edge

echo "Installing the required snaps for testing...Done"
