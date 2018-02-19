require 'isaac'
require 'kafka'

configure do |c|
  c.nick     = ENV['TWITCH_USERNAME']
  c.server   = "irc.twitch.tv"
  c.port     = 6667
  c.password = ENV['TWITCH_PASSWORD']
  c.verbose  = true
end

helpers do
  @chan = "##{ENV['TWITCH_CHANNEL']}"
  @kafka = Kafka.new(["#{ENV['KAFKA']}",], client_id: "kappa-twitch")
  @topic = ENV['KAFKA_TOPIC']
end