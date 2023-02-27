# Product Review App
# PAULINE NJUGUNA

# Introduction
This application focuses on the product reviews in an e-commerce domain. It contains three models: User, Review, and Product. A Product has many Users, a User has many Products, and a Review belongs to a User and a Product.

# Project Setup

Clone the repository to your local machine.

Run bundle install to install the necessary gems.

Run rake db:migrate to migrate the database.

(Optional) Run rake db:seed to seed the database with sample data.

Run rake console to start a pry session with your classes defined.


# Deliverables

Migrations
Before working on the rest of the deliverables, create a migration for the reviews table. A Review belongs to a Product, and a Review also belongs to a User. In your migration, create any columns your reviews table will need to establish these relationships. The reviews table should also have:

A star_rating column that stores an integer.
A comment column that stores a string.
After creating and running your migration, create your Review class, and use the seeds.rb file to create Review instances so you can test your code.

Object Association Methods
Use Active Record association macros and Active Record query methods where appropriate (i.e. has_many, has_many through, and belongs_to).

Review
#user - Returns the User instance for this Review.
#product - Returns the Product instance for this Review.
Product
#reviews - Returns a collection of all the Reviews for the Product.
#users - Returns a collection of all the Users who reviewed the Product.
User
#reviews - Returns a collection of all the Reviews that the User has given.
#products - Returns a collection of all the Products that the User has reviewed.
Aggregate and Association Methods
Review
#print_review - Puts in the terminal a string formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}.
Product
#leave_review(user, star_rating, comment) - Takes a User (an instance of the User class), a star_rating (integer), and a comment (string) as arguments, and creates a new Review in the database associated with this Product and the User.
#print_all_reviews - Puts in the terminal a string representing each review for this product. Each review should be formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}.
#average_rating - Returns a float representing the average star rating for all reviews for this product.
User
#favorite_product - Returns the product instance that has the highest star rating from this user.
#remove_reviews(product) - Takes a Product (an instance of the Product class) and removes all the reviews associated with it.

# Conclusion
This application provides methods to manage reviews for products in an e-commerce platform. The deliverables focus on building the required methods using Active Record associations, querying, and migrations.

# License

This program is available as open source under the terms of the MIT License.