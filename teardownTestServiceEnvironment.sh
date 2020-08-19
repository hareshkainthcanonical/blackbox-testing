#!/bin/bash

echo "Removing test environment..."

./installSnaps.sh

./turnOnRequiredTestServices.sh

echo "Removing test environment...Done"
