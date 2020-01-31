FROM ruby:2.6

ENV LANG C.UTF-8
RUN curl -SL https://deb.nodesource.com/setup_12.x | bash && apt update -qq && apt install -y nodejs
ENV WEB_APP_ROOT /var/www

RUN mkdir -p $WEB_APP_ROOT/webapp
WORKDIR $WEB_APP_ROOT/webapp
COPY webapp/Gemfile Gemfile
COPY webapp/Gemfile.lock Gemfile.lock
RUN bundle install
ADD . .

RUN mkdir -p tmp/pids && \
    mkdir -p tmp/sockets && \
    mkdir -p tmp/public
