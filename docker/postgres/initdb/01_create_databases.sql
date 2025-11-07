-- labdb already exists because POSTGRES_DB=labdb
-- Create only the extra databases idempotently:

-- Create "exercises" only if it doesn't exist
SELECT 'CREATE DATABASE exercises'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'exercises') \gexec

-- Grants (will succeed even if db existed before)
GRANT ALL PRIVILEGES ON DATABASE labdb     TO labwrite;
GRANT CONNECT         ON DATABASE labdb     TO labread;

GRANT ALL PRIVILEGES ON DATABASE exercises TO labwrite;
GRANT CONNECT         ON DATABASE exercises TO labread;
