# Jungle

A mini e-commerce application built with Rails 4.2., PostgreSQL 9.x, Bootstrap. 

TDD was used during creating this project as well as RSpec for testing some functionality.

Customer can:
* sign up account, login, logout. Data is hashed by bcrypt;
* add items to the cart, change quantity, pay for items using Stripe account.

Admin can:
* moderate products;
* create new categories;
* view promotions.

ADMIN NAME = Jungle
ADMIN PASSWORD = book




## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* bcrypt 3.1.12
