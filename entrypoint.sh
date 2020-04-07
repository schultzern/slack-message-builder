#!/bin/sh -l

JSON=$( jq -n -c \
           --arg channel "$1" \
           --arg text "$2" \
           '{channel: $channel, text: $text}' )

echo "::set-output name=json::${JSON}"
