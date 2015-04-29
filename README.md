# Rails Start

- [Staging](http://app.herokuapp.com/)
- [Production](http://app.herokuapp.com/)

## Dependencies

 * Ruby 2.2.2
 * Rails 4.2.1
 * PostgreSQL 9.3
 * Bower

## Installation

```
git clone https://matheusazzi@bitbucket.org/matheusazzi/store.git
cd store
bundle install
```

Make a copy of the database configuration file:

```
cp config/database.yml.example config/database.yml
```

Install the database.

```
./bin/rake db:create
./bin/rake db:migrate
```

Add the initial data:

```
./bin/rake db:seed
```

#### Bower

This start uses Bower for front-end dependencies

```
npm install -g bower
bower install
```

#### Qt

You’ll need to have the Qt libraries in order to install capybara-webkit. Here’s how to do it on the Mac, assuming you have homebrew:

```
brew install qt
```

If that fails, or if you’re on a different platform, check the [capybara-webkit](https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit) wiki for instructions.

## Deploy

As for right now we are using heroku as a staging deployment server.
Once the local repo is configured, and the heroku remote repo is in place,
the local repository can be used to make the deploy by:

### Staging

Commit and push to repository all your changes, then:

```
rake deploy:staging
# or
rake deploy:production
```

## Test

To test Ruby and Javascript run:

```
rake
```