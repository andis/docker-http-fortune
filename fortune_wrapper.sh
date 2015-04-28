#!/bin/sh

BODY="$(/usr/games/fortune)"
LENGTH=$((${#BODY} + 1)) # body + newline

cat <<EOS
HTTP/1.0 200 OK
Content-Type: text/html
Content-Length: ${LENGTH}

${BODY}
EOS
