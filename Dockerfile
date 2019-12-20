FROM ruby:alpine

# Bash to debug (optional)
RUN apk add --no-cache bash

# System enviroment
RUN apk add --update ruby ruby-dev
RUN apk add --update build-base
RUN apk add --no-cache gcc musl-dev
RUN apk add --no-cache openssl-dev

# Bundler
# https://bundler.io/v2.0/guides/bundler_docker_guide.htmls
RUN gem install --no-document bundler

ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH
RUN unset BUNDLE_PATH
RUN unset BUNDLE_BIN

WORKDIR /app
ADD ./puma/Gemfile /app/
ADD ./puma/Gemfile.lock /app/

RUN bundle install