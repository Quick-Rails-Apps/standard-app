# Ruby on Rails Starter App
The purpose of this project is to build a simple set of Ruby on Rails starter apps that everyone in the Rails community can use to build apps faster and better. We're starting with the standard app first.

## Getting Started
These instructions should help you create and setup a standard rails app project. This guide assumes you are familiar with building Ruby on Rails projects using GitHub. To learn the basics for creating a Ruby on Rails project, read here - http://guides.rubyonrails.org/getting_started.html

## Prerequisites
As a starter app for Ruby on Rails, this app requires Ruby and Rails be installed. If you're brand new to Rails, you should stop here and learn how to setup a Ruby on Rails development enviornment first. This guide will help - http://railsapps.github.io/installrubyonrails-mac.html

Assuming you have a basic environment setup to develop Ruby on Rails apps using a PostgreSQL database, then these are the recommended steps to update your environment to support the creation of this app.

```
# install bundler
gem install bundler

# install Ruby
brew install ruby
rvm install 1.9.3
rvm use 2.4.2
ruby -v

```

## Installation
A step by step series of examples that tell you have to get a development env running

```
cd [my_projects_url]
rails new [my_app_name] --database=postgresql
cd [my_app_name]


# copy it down...
# git clone git@github.com:Quick-Rails-Apps/standard-app.git

git-flow init
seeding...

rails s

End with an example of getting some data out of the system or using it for a little demo

```

## Configuration
More to come...

```
XXXX
```

## Code Quality
Explain linting....

```
rake lint

rake lint:front
rake lint:coffee
rake lint:haml
rake lint:scss

rake lint:back
rake lint:ruby
rake lint:reek
rake lint:brakeman

```

## Testing
Explain how to run the automated tests for this system

```
rake test
rake test:controllers
rake test:integration
rake test:models
rake test TESTOPTS="--fail-fast"
```

## Deployment
Add additional notes about how to deploy this on a live system

```
scripts/deploy
```

## Heroku Setup

Highly recommend these:

```
heroku addons:create heroku-postgresql:hobby-dev
heroku addons:create scheduler:standard
heroku addons:create scout:chair
heroku addons:create newrelic:wayne
heroku addons:create papertrail:choklad
heroku addons:create sentry:f1
heroku addons:create sendgrid:starter
```

And these should be used as needed/wanted.

```
heroku addons:create tinfoilsecurity:limited
heroku addons:create quotaguard:starter
heroku addons:create informant:free

```

## Branching
We use the standards branching conventions set below by the defaults for standard git-flow:
Command Line Cheatsheet: https://danielkummer.github.io/git-flow-cheatsheet/
Git Flow Philosophy: http://nvie.com/posts/a-successful-git-branching-model/

* master - production branch
* develop - next release branch
* [feature/] - Feature branches
* [release/] - Release branches
* [hotfix/] - Hotfix branches
* [support/] - Support branches

To setup git-flow on your branch:

```
brew install git-flow
cd myapp
git flow ????????
git-flow init

``````

To create feature branches:

```
git flow feature start
git flow feature publish
git flow feature finish

```

To release:

```
git flow release start
git flow release publish
git flow release finish
```

## Versioning
We use GitHub for versioning. For the versions available, see the [tags on this repository](https://bitbucket.com/your/project/tags).


## Built With
Ruby on Rails - if you don't love it, you probably haven't build an app with it.
jQuery - who doesn't
PostgreSQL - 
Heroku - 

## Plugins

Dillinger is currently extended with the following plugins. Instructions on how to use them in your own application are linked below.

| Plugin | Link |
| ------ | ------ |
| Dropbox | [plugins/dropbox/README.md] [PlDb] |


## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Contributing
Please read [CONTRIBUTING.md] for details on our code of conduct, and the process for submitting pull requests to us.

## Authors & Contributors
* **Brett Adler** - *Initial work*

## Acknowledgments
* This file is based off this template - https://gist.github.com/PurpleBooth/109311bb0361f32d87a2
* This file was written with help from https://dillinger.io/
* Hat tip to anyone who's code was used
* Inspiration
* etc

## ???????

```
XXXX
```
