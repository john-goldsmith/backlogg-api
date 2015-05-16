# Backlogg API - Sinatra
Backlogg's RESTful API written in Ruby using [Sinatra](http://www.sinatrarb.com/).

## Setup

### Prerequisites
- Ruby 2.1.1 via [rbenv](https://github.com/sstephenson/rbenv)
- [Ruby Gems](https://rubygems.org/pages/download)
- Run `bundle install` (or `bundle update`) via [Bundler](http://bundler.io)
  - If `gem install pg` fails, try running `brew install postgresql` first

### Database
- Download, install, and run [PostgreSQL](http://postgresapp.com)
- Run `createdb backlogg_development` to create the database
-
- Run `bundle exec rake db:create`
- Run `bundle exec rake db:migrate`
- Run `bundle exec rake db:seed`

### Run it
`bundle exec rerun rackup config.ru`

### Interactive Console
`bundle exec rake console`

### Documentation
- Create or login to your [apiary.io](https://login.apiary.io/login) account
- Visit [https://login.apiary.io/tokens](https://login.apiary.io/tokens) to obtain an API key and save it in `.env`
- Run `apiary preview --server` or `aglio -i apiary.apib -s -p 8080`

## To-do
- Implement [DataMapper](http://datamapper.org/)