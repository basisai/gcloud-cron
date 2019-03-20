#!/usr/bin/env bash
set -euo pipefail

TEST_IMAGE="${TEST_IMAGE:-quay.io/helmpack/chart-testing:v2.2.0}"

docker run --rm -it -v "$(pwd):/gcloud-cron" --workdir "/gcloud-cron" \
    "${TEST_IMAGE}" \
ct lint --all --config tests/ct.yaml
