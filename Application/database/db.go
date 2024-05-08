package database

import (
	"database/sql"

	_ "github.com/lib/pq"
)

func Init() (*sql.DB, error) {
	db, err := sql.Open("postgres", "host=localhost port=5432 user=postgres password=123 dbname=go_db sslmode=disable")
	return db, err
}
