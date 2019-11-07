#!/bin/sh

curl \
--silent --output /dev/null \
--header "Content-Type: application/json" \
--header "Authorization: Bearer ${PB_TOKEN}" \
--data-urlencode "type=note" \
--data-urlencode "title=$PB_TITLE" \
--data-urlencode "body=$PB_TEXT" \
"https://api.pushbullet.com/v2/pushes"
