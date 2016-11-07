#!/bin/bash

MUSER="opencart"
MPASS="J9eJRuBQN7YGXpam"
MDB="opencart"

# Detect paths
MYSQL=$(which mysql)
AWK=$(which awk)
GREP=$(which grep)


echo "Start dropping all tables in database '${MDB}'"

TABLES=$($MYSQL -u $MUSER -p$MPASS $MDB -e 'show tables' | $AWK '{ print $1}' | $GREP -v '^Tables' )

for t in $TABLES
do
  echo "Deleting $t table from $MDB database..."
  $MYSQL -u $MUSER -p$MPASS $MDB -e "drop table $t"
done





echo "......"
echo "Import dump file to $MDB"

mysql -uroot -p opencart < dump.sql

