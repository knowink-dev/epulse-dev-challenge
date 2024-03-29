FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client npm
RUN npm install --global yarn
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle
RUN rails webpacker:install
RUN rails db:create
RUN rails db:migrate
COPY . /app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
EXPOSE 5432

CMD ["rails", "server", "-b", "0.0.0.0"]
