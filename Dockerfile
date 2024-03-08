FROM ruby:3.0
LABEL authors="Amey"

RUN bundle config --global frozen 1

RUN gem install jekyll bundler

WORKDIR /srv/jekyll

COPY Gemfile Gemfile.lock minimal-mistakes-jekyll.gemspec ./

RUN bundle install

VOLUME /srv/jekyll