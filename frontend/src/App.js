import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import { ApolloProvider } from 'react-apollo';
import { ApolloClient } from 'apollo-client';
import { createHttpLink } from 'apollo-link-http';
import { InMemoryCache } from 'apollo-cache-inmemory';
import MessageView from './MessageView';
import objectToQuery from 'object-to-querystring';

const customFetch = (uri, options) => {
  const { body, ...newOptions } = options;
  let bodyObject = JSON.parse(body);
  bodyObject.variables = null;
  const queryString = objectToQuery(bodyObject);
  let requestedString = uri + queryString;
  return fetch(requestedString, newOptions);
};
const link = createHttpLink({
  uri: "http://rails:3000/graphql",
  fetchOptions: { method: "POST" },
  fetch: customFetch
});
const client = new ApolloClient({
  link: link,
  cache: new InMemoryCache(),
});

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Welcome to React</h1>
        </header>
        <ApolloProvider client={client}>
          <MessageView />
        </ApolloProvider>
      </div>
    );
  }
}

export default App;
