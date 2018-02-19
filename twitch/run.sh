#!/bin/sh
PWD=$(pwd)
CMD="bundle exec ruby -r $PWD/sync.rb $PWD/twitch.rb"
exec $CMD
