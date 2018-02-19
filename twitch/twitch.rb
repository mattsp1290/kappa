require 'isaac'
require 'json'
require 'twitch'
require './config'

on :connect do
  join @chan
end

on :channel do
    twitch_message = TwitchMessage.new(channel, message, nick)
    @kafka.deliver_message(twitch_message.to_json, topic: @topic)
end

class TwitchMessage
  attr_accessor :channel, :message, :nick
  def initialize( channel, message, nick )
    @channel = channel
    @message = message
    @nick = nick
  end
end