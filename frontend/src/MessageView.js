import React from 'react';
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';

function MessageView({ data: { messages, refetch } }) {
  return (
    <div className="message-view">
      <br />
      <button onClick={() => refetch()}>Refresh</button>
      {messages && messages.map(message => <p key={message.id}>{message.nick}: {message.message}</p>)}
    </div>
  );
}

export default graphql(gql`
  query MessageView {
    messages {
        id
        nick
        message
        channel
    }
  }
`)(MessageView);