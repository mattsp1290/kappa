Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :messages, !types[Types::MessageType] do
    resolve -> (obj, args, ctx) {
      Message.all.reverse
    }
  end
end