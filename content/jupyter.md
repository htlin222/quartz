---
title: jupyter
---
docker run -i --rm \
    --user root \
    -p 8888:8888 \
    -e NB UID=1026 \
    -e NB GID=100 \
    -e NB USER=lizard \
    -e CHOWN HOME=yes \
    -e CHOWN HOME OPTS="-R" \
    -w "/home/${NB USER}" \
    -v /volume1/docker/jupyter:/home/${NB USER}/ \
    jupyter/minimal-notebook:latest
