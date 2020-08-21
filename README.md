# Theresa

Enjoying a Walk Near You.

## Install

Run the following commands to start the project for the first time
```
bundle install
rails db:migrate:reset
npm install
rails active_storage:install
rails db:migrate
```

After updates run
```
bundle install
npm install
```

Updating Heroku DB
It will update on its own if Circle CI passes. 

The command to update the database on Heroku is as follows:
```
heroku run rake db:migrate --app cryptic-brook-48460
```

### User Stories

### Model

### Testing
RSpec
`bundle exec rspec` to run local tests

CircleCI
run `gem update --system` to get the error 
`find_spec_for_exe': Could not find 'bundler' (2.1.4)` to go?

Run webpage locally
`rails s` then go to localhost:3000
