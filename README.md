# DESCRIPTION

This is the API for the Meal Planner application.

This is an application designed to be used for Meal planning, especially when traveling. Components include a Meal Plan that includes all meals as well as a Grocery List that can include all ingredients that may be purchased to prepare meals.

Each user will have their own collection of meals that cannot be viewed by other system users. Each user will have their own collection of ingredients that cannot be viewed by other system users.

Author: Denise Patriquin Date: 12/01/2017

# VIEW ONLINE

Client Meal Planner Application:  https://dpatr.github.io/mealplanner-client

API Meal Planner Application: https://ancient-gorge-70615.herokuapp.com

Client GitHub Repository:  https://github.com/DPATR/mealplanner-client

# DEPENDENCIES

Install with `bundle install`:

-   [`rails-api`](https://github.com/rails-api/rails-api)
-   [`rails`](https://github.com/rails/rails)
-   [`active_model_serializers`](https://github.com/rails-api/active_model_serializers)
-   [`ruby`](https://www.ruby-lang.org/en/)
-   [`postgres`](http://www.postgresql.org)

## Structure and Technologies

The API follows the standard project structure in Rails:

Application assets Controllers Models Serializers
Configuration Routes
Database Migrate Schema Seeds
Scripts

Technologies:

Ruby on Rails
Heroku

## API

User authentication is built-in. Scripts are included to test built-in actions.

Users, Meals and Ingredients resources inherit from ProtectedController.

Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

Meals

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| GET    | `/meals`               | `meals#index`     |
| POST   | `/meals`               | `meals#create`    |
| PATCH  | `/meals/:id`           | `meals#update`    |
| GET    | `/meals/:id`           | `meals#show`      |
| DELETE | `/meals/:id`           | `meals#destroy`   |

Ingredients

| Verb   | URI Pattern            | Controller#Action    |
|--------|------------------------|----------------------|
| GET    | `/ingredients`         | `ingredients#index`  |
| POST   | `/ingredients`         | `ingredients#create` |
| PATCH  | `/ingredients/:id`     | `ingredients#update` |
| GET    | `/ingredients/:id`     | `ingredients#show`   |
| DELETE | `/ingredients/:id`     | `ingredients#destroy`|


## Planning and Approach

Entity Relationship Diagram: https://imgur.com/05lUrvN

Approach:

I used a top-down analysis for this project. The API was designed and tested first. The Client was designed and tested using the API structure and data.

I began planning the API with an ERD. The build design includes using foreign keys on Meals and Ingredients resources to create a relationship between Users and Meals entities as well as Users and Ingredients.

Inheritance from ProtectedController was used to protect the privacy of system users and their personal preferences.

I used test scenarios with appropriate tests data using curl scripts to validate functionality intially.

Once I had the Client application ready for use, I did integration and end-to-end testing for the application as a whole.

## Future Enhancements

1. Integrate with a third party API to pull in recipes for entrees and ingredients and save them to my database.  Food2Fork and Spoonacular are two API resources of interest.
2. Add date elements to the Meals resource to enable creation of meals in the future.
3. Add category to Meals resource to enable more specific search criteria.
