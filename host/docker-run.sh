#!/bin/bash
docker run --rm \
  -e USER_NAME="$USER" \
  -e SSH_CONNECTION="$SSH_CONNECTION" \
  -e SSH_CLIENT="$SSH_CLIENT" \
  -v /opt/ssh-logger/config:/config \
  ssh-logger
