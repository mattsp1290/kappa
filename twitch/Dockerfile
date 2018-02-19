FROM ruby:alpine

MAINTAINER Matt Spurlin <mattsp1290@gmail.com>

COPY run.sh /run.sh
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app
COPY Gemfile.lock /app
RUN bundle install
COPY config.rb /app
COPY sync.rb /app
COPY twitch.rb /app

ENTRYPOINT [ "/run.sh" ]