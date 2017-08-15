# Clerk - Expense Sharing

## Project Blurb
Clerk allows you to record, split, and track shared expenses and payments. Clerk is for you and your roommates sharing utility bills, you and you best friends traveling cross-country in Canada, or you and your date going Dutch. Keep it objective, keep it fair, keep it real.

## Installation
- Fork the repo
- `$ cd peanuts`
- `$ bundle install`
- Make sure your local PostgreSQL server is running
- `$ rails db:create`
- `$ rails db:migrate`
- `$ rails db:migrate RAILS_ENV=test`
- Run specs: `$ rspec`
- `$ rails s`
- Navigate to `localhost:3000` in your browser

## Contributing
Please submit an issue to github issues. PR's welcome.

## System Architecture
- Ruby on Rails 5.0
- Ruby 2.3
- Postgres
- Heroku
- Github 
- Notable Gems
  - devise 
  - simple_form
  - twitter-bootstrap-rails 
  - rspec-rails 
