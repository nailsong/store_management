FROM ruby:2.6.5

RUN gem install bundler

ENV INSTALL_PATH /store

RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY Gemfile ./

ENV BUNDLE_PATH /gems

COPY . .