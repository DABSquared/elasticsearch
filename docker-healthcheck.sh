#!/bin/bash
set -eo pipefail

if health="$(curl -fsSL "http://localhost:9200/_cat/health?h=status")"; then
	health="$(echo "$health" | sed -r 's/^[[:space:]]+|[[:space:]]+$//g')" # trim whitespace (otherwise we'll have "green ")
	if [ "$health" = 'green' ]; then
		exit 0
	fi
	echo >&2 "unexpected health status: $health"
fi

exit 1