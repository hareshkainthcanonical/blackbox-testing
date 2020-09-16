#!/bin/bash

echo "Resetting test environment..."

./removeSnaps.sh

./installSnaps.sh

./turnOnRequiredTestServices.sh

echo "Resetting test environment...Done"
