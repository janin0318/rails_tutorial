FROM ruby:2.6.6

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN gem install rails -v "~> 5.2" -N

RUN mkdir /sample_app
WORKDIR /sample_app
COPY . /sample_app
# 後で有効化
RUN bundle install 