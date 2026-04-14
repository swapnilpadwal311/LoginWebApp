#!/bin/bash

set -e  # stop script immediately if any command fails

DB_HOST="database-2.cnew8imesw19.ap-south-1.rds.amazonaws.com"
DB_PORT="3306"

DB_USER="admin"
DB_PASS="admin123@2026"

DB_NAME="database-2"

echo "Connecting to AWS RDS..."

mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASS" <<SQL


