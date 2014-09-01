# Backlogg API

## Setup

### Database
```
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

### Console
`bundle exec rake console`

### Documentation
`apiary preview --server` or `aglio -i apiary.apib -s -p 8080`

## To-do
- Implement [DataMapper](http://datamapper.org/)