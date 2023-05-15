FROM ruby:3.2.2-alpine

WORKDIR app/

RUN apk add --update --no-cache \
build-base \
git \
openssl-dev \
postgresql-dev \
tzdata \
nodejs \
&& rm -rf /var/cache/apk/*

RUN gem install bundler

COPY . /app
COPY Gemfile Gemfile.lock ./

RUN bundle install