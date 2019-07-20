FROM ruby:2.5.1
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get update && apt-get install -y build-essential libpq-dev nodejs && rm -rf /var/lib/apt/lists/*
RUN mkdir /sample_app
WORKDIR /sample_app
COPY .Gemfile.cache /sample_app/Gemfile
COPY .Gemfile.lock.cache /sample_app/Gemfile.lock
RUN bundle install
COPY Gemfile /sample_app/Gemfile
COPY Gemfile.lock /sample_app/Gemfile.lock
RUN bundle install
COPY . /sample_app
