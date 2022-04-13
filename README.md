# Jerome's sample_app - Ruby on Rails Tutorial sample application

This application is an exercise in the context of the [*Ruby on Rails Tutorial*](https://www.railstutorial.org/)
by [Michael Hartl](https://www.michaelhartl.com/) that I am currently following (April 2022) to practice coding.

* Ruby version: ruby 3.0.3p157
* Rails version: Rails 6.1.5

*## Getting started
To get started with the app, clone the repo and then install the needed gems:
```
$ bundle config set --local without 'production'
$ bundle install
```
Next, migrate the database:
```
$ rails db:migrate
```
Finally, run the test suite to verify that everything is working correctly:
```
$ rails test
```
If the test suite passes, you'll be ready to run the app in a local server:
```
$ rails server
```
