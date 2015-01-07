#!/bin/bash

echo 'Installing essential packages...'

# Apt
apt-get update -y -q

# Essentials
apt-get install build-essential -y -q

# PSF
apt-get install python-software-properties -y -q

# Curl
apt-get install curl -y -q

echo '...Done.'