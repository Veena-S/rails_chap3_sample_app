# README

## Ruby on Rails Tutorial sample application

This is the sample application for
[_Ruby on Rails Tutorial:
Learn Web Development with Rails_](https://www.railstutorial.org/)
(6th Edition)
by [Michael Hartl](https://www.michaelhartl.com/).

## Getting Started

To get started with the app, clone the repo and then install the needed gems:

```
$ gem install bundler
$ bundle config set --local without 'production'
$ bundle install
```

Next, create and migrate the datase:

```
$ rake db:create
$ rails db:migrate
```

Finally, run the test suit to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server

```

For more information, see the [_Ruby on Rails Tutorial_ book](https://www.railstutorial.org/book).
