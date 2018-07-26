#!/bin/sh

set -e

if [ -e /var/www/app/tmp/pids/server.pid ]; then
	rm -f /var/www/app/tmp/pids/server.pid
fi

rails s -b 0.0.0.0 -p 3000

