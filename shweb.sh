#!/bin/bash
$host=$1
$path=${$2:-/}
exec 4<>/dev/tcp/$host/80
echo -e "GET $path HTTP/1.1\r\nhost: $host\r\nConnection: close\r\n\r\n" >&4
cat <&4
