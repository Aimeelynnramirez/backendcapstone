#!/bin/bash
# API="${API_ORIGIN:-http://localhost:4741/}"

API="${API_ORIGIN:-https://backendcapstone.herokuapp.com}"
URL_PATH="/examples"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
