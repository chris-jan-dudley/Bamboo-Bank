# README

Welcome to Bamboo Bank, a simple Rails web app which allows users to:
* Register an account with a starting balance of 100 Bambeuro (൫)
* Log in and log out of their account
* On logging in, see an overview of their current balance and transaction history
* Create a new transaction to other Bamboo Bank accounts

## Ruby on Rails Versions
* Ruby 3.2.2
* Rails 7.0.4.3

## Running the App
1. Clone into the Bamboo Bank repo on your machine, with the above versins of Ruby and Rails installed. 
2. From the repository root, run 
    ```
    bundle install                  # installs dependencies
    rails css:install:bootstrap     # installs out-of-the-box bootstrap to improve styling
    rails db:migrate db:seet        # runs database migrations to create user and transaction models, and seeds two users
    ```
3. Start the rails server by running `rails server` or `rails s`
4. Access the app from `http://localhost:3000/`. You should see a home screen for the Bank with options to log in or register a user.
5. To log into a seeded user, use `email = chris@bamboo.com, password = 123` or `email = tom@bamboo.com, password = 456`
6. After succesfully registering or logging in, you should see your profile home page

## Features
* Once logged in, you should be shown your account page (you can return via the navbar)
* You will be shown all transactions, split into received and sent Bambeuro
* You can start a new transaction to any other account
* Testing on basic functionality

## Shortcomings
* The flash notices aren't fully impltemented, especially on failure
* From validation is present, but input errors are not yet displayed
* Styling is minimal
* You can send money to yourself
* No validation for going into negative balance

## Short term improvements
* Better validation and input error handling
* More test coverage to check views will get correct data, e.g. tests for correct transaction history
* Nicer UI, e.g. spacing, date formatting.
* Support username login
* Run transactions as asynchronous jobs, so that a transaction can be created, but tagged as failed without updating the account balance.

## Other Notes
* Time spent approx. 2 hours (additional 10-15 minutes on Readme)
* Github Co-Pilot used to speed up code generation, mostly around erb templates. 

