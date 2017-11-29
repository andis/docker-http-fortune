#!/bin/sh

BODY="$(/usr/bin/fortune)"
LENGTH=$((${#BODY} + 1)) # body + newline

cat <<EOS
HTTP/1.0 200 OK
Content-Type: text/plain; charset=utf-8
Content-Length: ${LENGTH}

${BODY}
EOS
