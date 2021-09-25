# Project: Poker Hand Checker

## About
#### This app allows users to check their hands based on the inputs for example the code `2H5H7D8C9S` means `High Card`.

# User Story
Users are able to log any any input and in any format. For Example this `2H5H7D8C9S` also be this `2H5H9S7D8C` and the result will not be affected. User are also able to look for examples in the accordion. Once the user enter their name and code to check the rank and name if the hand. The Modal pops up to notify user about their results.


## Technologies used
#### Ruby On Rails, PostgreSQL, JavaScript

## Developments
This is project is currently under development. The db is created and the next step is to expand this app to be a full poker hand game. Which means users will be able to see and choose any card from the ui to check their results.

## How to run the app
This app is deployed [here](https://poker-hand-checker.onrender.com/). To locally run this app. Please follow the below steps:
1. Clone this repository.
2. On your terminal please use `git clone (url)`.
3. Once you are inside the repo then run `bundle install`. You also might need to update your bundle package and in that case you can run `bundle update`.
4. Bundle will install all the gems and dependencies from gemfile. Now you will have to create and migrate the db. To do so please run `rake db:create` adn then `rake db:migrate`. I like to see the logs, so my go to command is `rake log db:migrate`.
5. That's it now start your server by running `bin/rails server`

## Test
To run the tests please run `bundle exec rspec` from your terminal
