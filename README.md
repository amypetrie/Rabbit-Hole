# README
## Rabbit

Rabbit is a web application designed to help users conduct online research more efficiently, providing a process for breaking down a complex topic into targeted questions, documenting/storing online content for future reference, and notetaking. RabbitH utilizes the Bing v7 Search API to continually generate resources directly related to a user's topic of interest and specific question. Google OAuth is used for user registration and login.

### Setup:

To begin:
Clone this repo.
Run `bundle install`. You can review the list of added gems are below.
Run `bundle exec rake db:{drop,create,migrate}` to create the database and schema.
Run the local test suite using `bundle exec rspec` to ensure the application has been downloaded correctly (expect 100% success rate).

### Gems installed:

#### Main
- gem 'figaro'
- gem 'faraday'
- gem 'sendgrid-ruby'
- gem 'google-api-client', req
- gem 'omniauth-google-oauth2'
- gem 'bcrypt'
- gem 'webpacker'
- gem'jquery-rails'
- gem 'popper_js'
- gem 'simple_form'

#### Testing
- gem 'rspec-rails'
- gem 'launchy'
- gem 'webmock'
- gem 'vcr'
- gem 'capybara'
- gem 'shoulda-matchers'  
- gem 'simplecov'
- gem 'database_cleaner'
- gem 'factory_bot_rails'
- gem 'pry'
- gem 'selenium-webdriver'

### Schema:

![Schema](./schema2.png)

### Requirements, Access, Security:

This application requires a Bing v7 Search Key for API consumption and a Google OAuth Client Key and Secret to utilize the existing OAuth capabilities.

### Near Term Functionality Goals:
- Editing profile information.
- Editing/deleting topics, links, questions.
- Scroll bar for Bing Links and ability to set how many links a user wants displayed.
- Admin functionality.

### Future Iterations:

- Incorporating Google Calendar to schedule to-do's.
- Rendering web page content within the app.

