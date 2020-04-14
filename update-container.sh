#!/bin/sh
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --run-
once "${1?Which container do you want?}"
