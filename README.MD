# Golang Migrate
for creating migrations
```bash
migrate create -ext sql -dir db/migrations -seq migration_name
```
define DataBase url as env variable as below
```bash
export POSTGRESQL_URL=postgresql://postgres:password@127.0.0.1:5432/goldenstate_db?sslmode=disable
```
apply migrations with
```bash
migrate -database ${POSTGRESQL_URL} -path db/migrations up
```
drop migrations with
```bash
 migrate -database ${POSTGRESQL_URL} -path db/migrations down
```
+ apparently does not have mechanism for dependency
+ saves migration up/downs in separated files
+ uses raw sql in migrations
+ uses sequence of numbers starting from 1 for migrations numbers
+ saves only sequence number for migrations
