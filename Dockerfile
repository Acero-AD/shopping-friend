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

COPY . ./

RUN bundle install
CMD ["rails", "server", "-b", "0.0.0.0"]
