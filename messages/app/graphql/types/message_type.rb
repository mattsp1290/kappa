# app/graphql/types/message_type.rb
Types::MessageType = GraphQL::ObjectType.define do
    name 'Message'
  
    field :id, !types.ID
    field :nick, !types.String
    field :message, !types.String
    field :channel, !types.String
  end