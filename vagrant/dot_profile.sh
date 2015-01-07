#!/bin/bash

echo 'Installing dot profile...'

echo -e "\n# Set /devbox/.profile path" >> .profile
echo 'if [ -f "/devbox/.profile" ]; then . "/devbox/.profile"; fi' >> .profile

echo '...Done.'