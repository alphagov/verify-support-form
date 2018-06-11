# Verify Support Form

A form for allowing users to ask a question / give feedback or report a problem.

## Installing the application

Once you’ve cloned this then run the following commands to install the requirements.

```
bundle install
rails db:migrate
```

## Running the application

Prepare the application configuration:

```
cp .env-example .env
vim .env
```

You can run the application with:

```
bundle exec rails server
open http://localhost:3000
```
