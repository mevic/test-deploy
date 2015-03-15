#!/bin/sh

aws rds create-db-snapshot --region=$1 --output=text --db-instance-identifier $2 --db-snapshot-identifier $3 --tags Key=Build,Value=$4

sleep 300

aws rds describe-db-snapshots --region=$1 --output=text --db-instance-identifier $2 --db-snapshot-identifier $3
