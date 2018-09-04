#!/bin/sh


# Authenticate using the service account stored variables
if [ -n $NPM_TOKEN ]
then
  echo "//registry.npmjs.org/:_authToken=$NPM_TOKEN" > $HOME/.npmrc
fi

echo $GCLOUD_SERVICE_KEY > $HOME/gcloud-service-key.json
gcloud auth activate-service-account --key-file=$HOME/gcloud-service-key.json
gcloud config set project $GCP_PROJECT_ID

tail -f /dev/null