#!/usr/bin/env bash
set -euo pipefail
docker compose -f docker-compose.postgres.yml exec -it postgres \
  psql -U "${POSTGRES_USER:-postgres}" -d "${POSTGRES_DB:-labdb}"
