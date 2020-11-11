# Jungle

A mini e-commerce application built with Rails 4.2., PostgreSQL 9.x, Bootstrap. 
Has full functionality including payment method and user authorization. 

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

## Screenshots

![Index page](https://user-images.githubusercontent.com/55424136/81231471-34789800-8fc1-11ea-8661-168b3734bec8.png)
![Admin create new product](https://user-images.githubusercontent.com/55424136/81231470-33e00180-8fc1-11ea-82f7-325a471562e7.png)
![My cart](https://user-images.githubusercontent.com/55424136/81231469-33e00180-8fc1-11ea-86b8-73c57a310efc.png)
![Payment](https://user-images.githubusercontent.com/55424136/81231467-33476b00-8fc1-11ea-985d-0d08944b244d.png)
![Complited order](https://user-images.githubusercontent.com/55424136/81231456-2f1b4d80-8fc1-11ea-93eb-c99a2419a03a.png)



