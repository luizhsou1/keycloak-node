#!/bin/sh

curl -X POST "http://localhost:8080/auth/realms/myrealm/protocol/openid-connect/token" \
 --header "Content-Type: application/x-www-form-urlencoded" \
 --data-urlencode "grant_type=password" \
 --data-urlencode "client_id=$1" \
 --data-urlencode "client_secret=$2" \
 --data-urlencode "username=$3" \
 --data-urlencode "password=$4"