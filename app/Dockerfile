FROM ruby:2.5.1-alpine3.7

WORKDIR /var/www

RUN apk add --update --no-cache --virtual build-dependencies \
      build-base \
      libxml2-dev \
      libxslt-dev \
      mariadb-dev \
 && gem install bundler \
# && bundle config build.nokogiri--use-system-libraries \
# && gem install nokogiri \
 && adduser -D -u 1000 rails \
 && gem install rails \
 && rails new app -d mysql \
 && sed -i -e "s/# gem 'mini_racer'/gem 'mini_racer'/g" app/Gemfile
 && apk del build-dependencies \
RUN cd /var/www/app \
 && bundle install --path=vendor/bundle \
 && ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

CMD rails server
