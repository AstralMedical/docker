#!/bin/bash

while ! timeout 1 bash -c 'cat < /dev/null > /dev/tcp/pg/5432' >/dev/null 2>/dev/null; do sleep 0.1; done

exec "$@"
