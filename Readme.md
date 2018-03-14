# Restore example for a postgres database 

## sql script
add your sql script as restore.sql in the restore directory


Restore the sql database

```
docker run -v $(pwd)/init/:/docker-entrypoint-initdb.d -v $(pwd)/$(mkdir -p ./data;echo data):/var/lib/postgresql/data -v$(pwd)/restore:/tmp/ --rm postgres:10.2 postgres
```
