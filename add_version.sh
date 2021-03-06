#!/usr/bin/env bash

DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

cat >> index.yaml << EOM
  - apiVersion: v1
    created: ${DATE}
    description: A Helm chart for Kubernetes
    digest: ${2}
    name: serving
    urls:
    - https://github.com/Hydrospheredata/hydro-serving-helm/releases/download/${1}/serving-${1}.tgz
    version: ${1}
EOM

