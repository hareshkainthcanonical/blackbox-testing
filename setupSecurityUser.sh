#!/bin/bash

echo "Setting up a security testuser"

. addSecurityAccountTestUser.sh

. generateTokenWithUser.sh

echo "Setting up a security testuser...Done"
