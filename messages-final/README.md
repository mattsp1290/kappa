# README
* add 'karafka' to Gemfile
* add 'bigdecimal' to Gemfile
* bundle install
* bundle exec karafka install
* Edit karafka.rb
* Add to config/environment.rb
require Rails.root.join(Karafka.boot_file)
* mkdir ./app/consumers
* Create ./app/consumers/ApplicationConsumer.rb
class ApplicationConsumer < Karafka::BaseController
    include Karafka::Controllers::Callbacks
end
* Create ./app/consumers/MessageConsumer.rb
class MessageConsumer < ApplicationConsumer
    def consume
        Message.create channel: params['channel'], nick: params['nick'], message: params['message']
    end
end
* Update karafka.rb and route :chat_message to MessageConsumer