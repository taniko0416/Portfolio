FROM ruby:2.6

ENV LANG C.UTF-8
RUN curl -SL https://deb.nodesource.com/setup_12.x | bash && apt update -qq && apt install -y nodejs

RUN mkdir -p webapp && \
    mkdir -p tmp/pids && \
    mkdir -p tmp/sockets && \
    mkdir -p tmp/public && \
    mkdir -p webapp/tmp/pids && \
    mkdir -p webapp/tmp/sockets && \
    mkdir -p webapp/tmp/public 
COPY webapp/package.json package.json
COPY webapp/Gemfile Gemfile
COPY webapp/Gemfile.lock Gemfile.lock
# COPY webapp/config config
RUN bundle install
# COPY startup.sh /webapp/startup.sh
ADD webapp webapp
WORKDIR /webapp
# RUN bundle install --path=vendor/bundle
# --path vendor/bundle
# RUN chmod 744 /startup.sh
# CMD ["startup.sh"]


# set bundler's path to local
# ENV GEM_HOME vendor/bundle
# ENV BUNDLE_PATH="$GEM_HOME" \
# 	BUNDLE_BIN="$GEM_HOME/bin" \
# 	BUNDLE_SILENCE_ROOT_WARNING=1 \
# 	BUNDLE_APP_CONFIG="$GEM_HOME"
# ENV PATH $BUNDLE_BIN:$PATH
# ENTRYPOINT [ "/usr/local/bundle/bin/puma" ]
