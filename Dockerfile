FROM ruby:2.6.6

RUN apt-get update -qq && apt-get install -y build-essential

# for postgres
RUN apt-get install -y libpq-dev

# for nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev

ENV APP_HOME /myapp
WORKDIR $APP_HOME

COPY Gemfile* $APP_HOME/
RUN bundle install

COPY . $APP_HOME

CMD ["rails", "server"]