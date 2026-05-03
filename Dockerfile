FROM ruby:3.2
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    postgresql-client \
    nodejs \
    npm && \
    npm install -g yarn
WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install