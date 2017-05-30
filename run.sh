#!/bin/bash

DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run -it \
-v "$DIR/etc:/etc/letsencrypt" \
-v "$DIR/var:/var/lib/letsencrypt" \
certbot/certbot certonly \
--manual \
--preferred-challenges=dns
