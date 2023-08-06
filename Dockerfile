  FROM ruby:3.1.2

  RUN apt-get update

  WORKDIR /app

  COPY Gemfile* .

  RUN bundle install

  COPY . .

  EXPOSE 3000

  CMD ["rails", "server", "-b", "0.0.0.0"]