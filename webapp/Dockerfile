FROM ruby:2.6

ENV LANG C.UTF-8

RUN curl -SL https://deb.nodesource.com/setup_12.x | bash && apt update -qq && apt install -y nodejs


RUN mkdir /webapp
WORKDIR /webapp

COPY Gemfile /webapp/Gemfile
COPY Gemfile.lock /webapp/Gemfile.lock
RUN bundle install
COPY . /webapp

RUN mkdir -p tmp/sockets
