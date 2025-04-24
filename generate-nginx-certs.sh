#!/bin/sh

mkdir -p nginx/certs

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout nginx/certs/vault-nginx.key \
  -out nginx/certs/vault-nginx.crt \
  -subj "/CN=localhost"

echo "✅ Self-signed certificate generated:"
