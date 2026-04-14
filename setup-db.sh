#!/bin/bash

set -e  # stop script immediately if any command fails

DB_HOST="database-2.cnew8imesw19.ap-south-1.rds.amazonaws.com"
DB_PORT="3306"

DB_USER="admin"
DB_PASS="admin123@2026"

DB_NAME="database-2"

echo "Connecting to AWS RDS..."

mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASS" <<SQL

CREATE DATABASE IF NOT EXISTS \`$DB_NAME\`;

USE \`$DB_NAME\`;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100),
    password VARCHAR(100)
);

SQL

echo "Database setup completed successfully"
