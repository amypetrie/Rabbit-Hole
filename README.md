# README
## Rabbit

Down the Rabbit Hole (Rabbit) is a Rails 5.2 web application that helps users conduct online research more efficiently. Rabbit provides a process for breaking down a complex topic into targeted questions, and makes storing links and note-taking organized and easy. Rabbit guides a user through creating a research topic and setting an intention to resources with answers and new knowledge. The Bing v7 Search API is consumed to continually generate relevant content, and Google OAuth is used for user registration and login. 

## Table of Contents

* Schema
* Prerequisites
* Testing Dependencies
* APIs consumed (keys required) / External Services
* Testing Dependencies
* Additional Gems
* Installation
* Running the Test Suite
* Near Term Functionality Goals
* Future Iterations

## Schema:

![Schema](./schema2.png)

## Prerequisites 

* Ruby v. 2.4
* Rails v. 5.2
* Puma v. 3.7
* PG v. 1.1.3

## APIs Consumed (keys required) / External Services

* [Bing v7 Search](https://azure.microsoft.com/en-us/services/cognitive-services/bing-web-search-api/)
* [Google OAuth](https://developers.google.com/identity/protocols/OAuth2WebServer)

## Testing Dependencies

* Rspec-Rails
* Capybara
* Factory_bot_rails
* Webmock
* VCR
* Faraday

## Additional Gems

* Bcrypt
* Shoulda-matchers
* Database_cleaner
* Figaro

## Installation
Clone down this repository, change into the root directory and run:

`bundle`

To setup the database necessary for this API, run the following commands:

`bundle exec rake db:create`

`bundle exec rake db:migrate`

## Running the Test Suite

Run `bundle exec rspec` to run the full test suite.

Run `bundle exec rspec <TEST FILE PATH>` to run a specific test


## Near Term Functionality Goals
* Editing profile information.
* Editing/deleting topics, links, questions.
* Scroll bar for Bing Links and ability to set how many links a user wants displayed.
* Admin functionality.

## Future Iterations

* Incorporating Google Calendar to schedule to-do's.
* Rendering web page content within the app.

