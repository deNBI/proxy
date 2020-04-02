#!/bin/bash
set -e

/root/.acme.sh/acme.sh --install-cert -d portal-dev.denbi.de --cert-file /tmp/cert.pem --key-file /tmp/key.pem --fullchain-file /tmp/fullchain.pem --reloadcmd "/update.sh" --debug

./docker-entrypoint.sh "$@"
