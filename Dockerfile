FROM ruby:2.6.6-stretch

# Copy application code
COPY . /application
# Change to the application's directory
WORKDIR /application

# Set production environment
ENV RAILS_ENV production

# Set bundler version, install gems & JavaScript runtime
ENV BUNDLER_VERSION='2.1.4'
RUN gem install bundler --no-document -v '2.1.4' \
    && bundle config set deployment 'true' \
    && bundle config set without 'development test' \
    && bundle install \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs

# Entrypoint
ENTRYPOINT ./entrypoint.sh
