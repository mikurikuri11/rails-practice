FROM ruby:3.1
RUN set -eux && \
    apt-get update -qq && \
    apt-get install -y \
      postgresql-client

WORKDIR /rails-practice
COPY Gemfile Gemfile.lock /rails-practice/
RUN bundle install