# Backlogg API

## Setup

### Database
```
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

### Run it!
`bundle exec rerun rackup config.ru`

### Console
`bundle exec rake console`

### Documentation
- Create or login to your [apiary.io](https://login.apiary.io/login) account
- Visit [https://login.apiary.io/tokens](https://login.apiary.io/tokens) to obtain an API key and save it in `.env`
- Run `apiary preview --server` or `aglio -i apiary.apib -s -p 8080`

## To-do
- Implement [DataMapper](http://datamapper.org/)