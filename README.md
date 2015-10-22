# Rails Start

- [Staging](http://app.herokuapp.com/)
- [Production](http://app.herokuapp.com/)

## Dependencies

 * Ruby 2.2.3
 * Rails 4.2.4
 * PostgreSQL 9.3
 * Node 0.10 or higher

## Installation

*There's a setup file, so you can just:*

```
git clone https://github.com/matheusazzi/rails-start.git
cd rails-start
./bin/setup
```

If the setup doesn't work you can follow this steps:

#### Database

Make a copy of the database configuration file:

```
cp config/database.yml.example config/database.yml
```

Install the database and the initial data.

```
./bin/rake db:setup
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

#### Deploying to Heroku

You'll have to add custom buildpacks that run bundle and npm install on the target machine.

```
$ heroku buildpacks:add https://github.com/heroku/heroku-buildpack-nodejs.git
$ heroku buildpacks:add https://github.com/heroku/heroku-buildpack-ruby.git
```

Commit and push to repository all your changes, then:

```
./bin/rake deploy:staging
# or
./bin/rake deploy:production
```

## Test

To test Ruby and Javascript run:

```
./bin/rake
```
