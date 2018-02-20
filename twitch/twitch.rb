require 'isaac'
require 'json'
require 'twitch'
require './config'

on :connect do
  join @chan
end

on :channel do
    twitch_message = {channel: channel, message: message, nick: nick}
    @kafka.deliver_message(twitch_message.to_json, topic: @topic)
end