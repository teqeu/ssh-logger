#!/bin/bash
# i used tailscale_ip because when i made i was using a tailnet. if you are not using a tailnet, you can change it to something else like $SSH_CLIENT or $SSH_CONNECTION
# Load config
source /config/config.env

payload=$(cat <<EOF
{
  "username": "$USER_NAME",
  "tailscale_ip": "$SSH_CONNECTION", 
  "client_fingerprint": "$SSH_CLIENT",
  "timestamp": "$(date)"
}
EOF
)

curl -X POST -H "Content-Type: application/json" -d "$payload" "$WEBHOOK_URL"