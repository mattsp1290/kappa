class MessageConsumer < ApplicationConsumer
    def consume
        Message.create channel: params['channel'], nick: params['nick'], message: params['message']
    end
end