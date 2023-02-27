user1 = User.create(name: "Alice")
user2 = User.create(name: "Bob")
user3 = User.create(name: "Charlie")

# create some products
product1 = Product.create(name: "iPhone")
product2 = Product.create(name: "Samsung Galaxy")
product3 = Product.create(name: "Google Pixel")

# create some reviews
review1 = Review.create(user: user1, product: product1, star_rating: 4, comment: "Great phone!")
review2 = Review.create(user: user2, product: product1, star_rating: 5, comment: "Best phone ever!")
review3 = Review.create(user: user3, product: product2, star_rating: 3, comment: "Decent phone, but not as good as the iPhone.")
review4 = Review.create(user: user1, product: product2, star_rating: 4, comment: "Good phone, but not as intuitive as the iPhone.")
review5 = Review.create(user: user2, product: product3, star_rating: 5, comment: "Love the camera!")
review6 = Review.create(user: user3, product: product3, star_rating: 2, comment: "Disappointing battery life.")

# associate products with users
product1.users << user1
product1.users << user2
product2.users << user1
product2.users << user2
product2.users << user3
product3.users << user2
product3.users << user3