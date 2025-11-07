
#!/usr/bin/env bash
set -euo pipefail
file="${1:-}"
[ -f "$file" ] || { echo "Usage: $0 backups/pgdump-YYYYmmdd-HHMMSS.sql.gz"; exit 1; }
gunzip -c "$file" | docker compose -f docker-compose.postgres.yml exec -T postgres psql -U "${POSTGRES_USER:-postgres}"
