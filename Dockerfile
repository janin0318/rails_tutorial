FROM ruby:2.6.6

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN gem install rails -v "~> 5.2" -N

RUN mkdir /rails_tutorial
WORKDIR /rails_tutorial
COPY . /rails_tutorial
# 後で有効化
# RUN bundle install 