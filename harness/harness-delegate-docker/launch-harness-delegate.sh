#!/bin/bash -e

sudo docker pull harness/delegate:latest

sudo docker run -d --restart unless-stopped --hostname=$(hostname -f) \
-e ACCOUNT_ID=j5Ga1D5NS0uNWZEnw4cH0g \
-e ACCOUNT_SECRET=3250bb84ebe64b2e1fbdd925509d0f1f \
-e MANAGER_HOST_AND_PORT=https://app.harness.io/gratis \
-e WATCHER_STORAGE_URL=https://app.harness.io/storage/wingswatchers \
-e WATCHER_CHECK_LOCATION=watcherprod.txt \
-e DELEGATE_STORAGE_URL=https://app.harness.io/storage/wingsdelegates \
-e DELEGATE_CHECK_LOCATION=delegatefree.txt \
-e DEPLOY_MODE=KUBERNETES \
-e PROXY_HOST= \
-e PROXY_PORT= \
-e PROXY_SCHEME= \
-e PROXY_USER= \
-e PROXY_PASSWORD= \
-e NO_PROXY= \
-e PROXY_MANAGER=true \
-e POLL_FOR_TASKS=false \
-e HELM_DESIRED_VERSION= \
-e CF_PLUGIN_HOME= \
-e MANAGER_TARGET=app.harness.io \
-e MANAGER_AUTHORITY=gratis-manager-grpc-app.harness.io \
harness/delegate:latest
