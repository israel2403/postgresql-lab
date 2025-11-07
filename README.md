# psql commands

### Connect to a psql session  
```sql
docker exec -it pg18 /bin/bash -c "psql -U israel -d postgres"
```

### Describe a table
```sql
\d table_name
```

### Display all databases
```sql
\l
```

### Choose an specific database
```sql
\c database_name
```