#!/bin/bash

set -x

podman run \
  --rm \
  --mount "type=bind,src=$(pwd),target=/data,rw" \
  docker.io/pandoc/core:latest \
  --to=revealjs \
  --output=index.html \
  --embed-resources=true \
  --self-contained \
  --fail-if-warnings \
  '--variable=revealjs-url:https://cdn.jsdelivr.net/npm/reveal.js@4.6.1' \
  --variable=theme:serif \
  --verbose \
  slides.md
