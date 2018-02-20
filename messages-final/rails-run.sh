#!/bin/sh
PWD=$(pwd)
CMD="bundle exec /app/bin/rails server"
cd /app
exec $CMD
