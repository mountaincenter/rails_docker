FROM ruby:2.7
RUN apt-get update && apt-get install -y \
		build-essential \
		libpq-dev \
		libssl-dev libreadline-dev zlib1g-dev \
		nodejs \
		npm && npm install -g yarn
WORKDIR /myapp
COPY Gemfile Gemfile.lock /myapp/
RUN bundle install