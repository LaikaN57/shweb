#!/bin/bash
exec 4<>/dev/tcp/$1/80
echo -e "GET /$2 HTTP/1.1\r\nhost: $1\r\nConnection: close\r\n\r\n" >&4
cat <&4
