#!/bin/bash
set -eo pipefail
shopt -s nullglob

# Call the renamed entrypoint script to get things started as usual
localstack-entrypoint.sh &

# Wait until 'Ready.' appears in the log output
until grep -q "^Ready.$" /tmp/localstack_infra.log >/dev/null 2>&1 ; do
  sleep 7
done

# Perform initialization steps
awslocal --endpoint-url=http://localhost:4572 s3 mb s3://my-app-bucket-1

# Finally - tail the output -> STDOUT as expected for a container (copied from localstack-entrypoint.sh)
tail -qF -n 0 /tmp/localstack_infra.log /tmp/localstack_infra.err
