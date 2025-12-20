#!/bin/bash

# Create .env file with complete configuration
cat > .env << EOF
# User ID and Group ID for containers
UID=$(id -u)
GID=$(id -g)

# Timezone
TZ=Asia/Shanghai

# Default values
MIDDLEWARE_HOME=.
EOF

sudo chmod -R 777 elasticsearch/data
sudo chmod -R 777 kibana/data

echo "Created .env file with UID=$(id -u) and GID=$(id -g)"
