# GrowPro Backend

This repository contains the backend code for GrowPro, an app designed to help users manage their plants and watering schedules.

## Database Schema

The database schema consists of three main tables:

### Plants

- `name` (String): The name of the plant.
- `description` (Text): A description of the plant.
- `amount_of_sun` (Integer): The amount of sunlight the plant requires.
- `days_to_water` (Integer): Number of days between each watering.
- `image_url` (String): URL of the plant's image.

### Schedules

- `plant_id` (Integer): Foreign key referencing the `id` column in the Plants table.
- `user_id` (Integer): Foreign key referencing the `id` column in the Users table.
- `watering_start_date` (Date): The date you want to water your plant.

### Users

- `name` (String): The name of the user.
- `email` (String): Email address of the user.
- `password_digest` (String): Encrypted password of the user.
- `image_url` (String): URL of the user's profile image.

### Ruby Version

- Ruby 3.2.2

### Framework

- Ruby on Rails 7.1.3

### Gems

- `pg`: PostgreSQL adapter for Active Record.
- `puma`: Web server.
- `bcrypt`: Password hashing.
- `jwt`: JSON Web Tokens for authentication.
- `rack-cors`: Cross-Origin Resource Sharing middleware.
- `debug` (Development/Test): Debugging utility.
- `web-console` (Development): Interactive debugging console.
- `capybara`, `selenium-webdriver` (Test): Testing utilities.

## Setup

1. Clone this repository.
2. Run `bundle install` to install dependencies.
3. Setup your database configuration in `config/database.yml`.
4. Run `rails db:create` to create the database.
5. Run `rails db:migrate` to run migrations and create tables.
6. (Optional) Run `rails db:seed` to seed the database with sample data.
7. Start the server by running `rails server`.
