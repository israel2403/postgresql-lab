
#!/usr/bin/env bash
set -euo pipefail
ts="$(date +%Y%m%d-%H%M%S)"
mkdir -p backups
docker compose -f docker-compose.postgres.yml exec -T postgres \
  pg_dumpall -U "${POSTGRES_USER:-postgres}" | gzip > "backups/pgdump-${ts}.sql.gz"
echo "Backup written to backups/pgdump-${ts}.sql.gz"
