#!/bin/sh

curl \
-i \
-X POST \
--header "Content-Type: application/json" \
--header "Authorization: Bearer ${PB_TOKEN}" \
--data-binary '{"type": "note", "title": $PB_TITLE, "body": $PB_TEXT}' \
"https://api.pushbullet.com/v2/pushes"
