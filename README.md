# GCloud + Node 8 Docker Image

An Alpine Docker image containing Google Cloud SDK & Beta Components + Node 8

## How to use

```
$ docker run -d --env GCLOUD_SERVICE_KEY=foo --env GCP_PROJECT_ID=bar --env NPM_TOKEN=baz gcloud-ci
```

### Environment variables

- GCLOUD_SERVICE_KEY
- GCP_PROJECT_ID
- NPM_TOKEN (optional)

## How to build

```
$ docker build -t gcloud-ci .
```

# Interacting

```
$ docker exec -it gcloud-ci sh
```
