#!/bin/sh
PWD=$(pwd)
CMD="bundle exec ruby -r $PWD/sync.rb /usr/lib/ruby/gems/2.4.0/gems/karafka-1.1.2/bin/karafka server"
cd /app
exec $CMD
