#!/bin/sh

curl -X POST "http://localhost:8080/auth/realms/myrealm/protocol/openid-connect/token" \
 --header "Content-Type: application/x-www-form-urlencoded" \
 --data-urlencode "grant_type=refresh_token" \
 --data-urlencode "client_id=$1" \
 --data-urlencode "client_secret=$2" \
 --data-urlencode "refresh_token=$3" 