#!/bin/sh

curl \
--silent --show-error \
-X POST \
--header "Content-Type: application/json" \
--header "Authorization: Bearer ${PB_TOKEN}" \
-d "{\"type\":\"note\", \"title\":\"$PB_TITLE\", \"body\":\"$PB_TEXT\"}" \
"https://api.pushbullet.com/v2/pushes"
