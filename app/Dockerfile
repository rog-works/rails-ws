FROM ruby:2.4.0-alpine

WORKDIR /var/www/app

COPY Gemfile /var/www/app/Gemfile
COPY Gemfile.lock /var/www/app/Gemfile.lock

RUN apk add --update --no-cache \
      # --virtual build-dependencies \
      build-base \
      libxml2-dev \
      libxslt-dev \
      mariadb-dev \
      nodejs \
      tzdata \
 && gem install bundler \
 && adduser -D -u 1000 rails \
 && gem install rails \
 && bundle install \
 # && apk del build-dependencies \
 && ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

CMD tail -f /dev/null
