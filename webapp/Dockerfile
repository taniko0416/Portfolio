FROM ruby:2.6

ENV LANG C.UTF-8
RUN curl -SL https://deb.nodesource.com/setup_12.x | bash && \
    apt update -qq && \
    apt install -y nodejs vim

RUN mkdir -p webapp && \
    mkdir -p tmp/pids && \
    mkdir -p tmp/sockets && \
    mkdir -p tmp/public
    
COPY webapp/package.json package.json
COPY webapp/Gemfile Gemfile
COPY webapp/Gemfile.lock Gemfile.lock
RUN bundle install
ADD webapp webapp
WORKDIR /webapp
