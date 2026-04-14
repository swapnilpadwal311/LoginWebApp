#!/bin/bash

DB_HOST="database-2.cnew8imesw19.ap-south-1.rds.amazonaws.com"
DB_PORT="3306"
DB_USER="admin"
DB_PASS="admin123"
DB_NAME="database-2"

echo "Connecting to AWS RDS..."
mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASS" <<SQL
CREATE DATABASE IF NOT EXISTS \`database-2\`;
USE \`database-2\`;
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100),
    password VARCHAR(100)
);

SQL

echo "Database setup completed successfully"

EOF

echo "Database setup completed successfully!"
~
~
~
