Wishlist.destroy_all
Product.destroy_all
AdminUser.destroy_all
Basket.destroy_all
puts("Wishlist Destroyed, Products Destroyed, Basket Destroyed and AdminUser Destroyed")

Product.create(name: "Body", price: 15.99, image: "body-vase (4).jpg", description: "Decorative create flower arrangement vase")
Product.create(name: "Body Statue", price: 15.99, image: "cat-vase (5).jpg", description: "Decorative create flower arrangement vase")
Product.create(name: "Vase", price: 15.99, image: "nordic-vase (5).jpg", description: "Decorative create flower arrangement vase")
Product.create(name: "Nordic", price: 15.99, image: "vases.jpg", description: "Decorative create flower arrangement vase")
Product.create(name: "Tall vase", price: 15.99, image: "body-vase (4).jpg", description: "Decorative create flower arrangement vase")
Product.create(name: "Face", price: 15.99, image: "cat-vase (5).jpg", description: "Decorative create flower arrangement vase")
Product.create(name: "Orniment", price: 15.99, image: "nordic-vase (5).jpg", description: "Decorative create flower arrangement vase")
Product.create(name: "Bowl Vase", price: 15.99, image: "vases.jpg", description: "Decorative create flower arrangement vase")
Product.create(name: "Body", price: 15.99, image: "body-vase (4).jpg", description: "Decorative create flower arrangement vase")
Product.create(name: "Body Statue", price: 15.99, image: "cat-vase (5).jpg", description: "Decorative create flower arrangement vase")
Product.create(name: "Vase", price: 15.99, image: "nordic-vase (5).jpg", description: "Decorative create flower arrangement vase")
Product.create(name: "Nordic", price: 15.99, image: "vases.jpg", description: "Decorative create flower arrangement vase")
Product.create(name: "Tall vase", price: 15.99, image: "body-vase (4).jpg", description: "Decorative create flower arrangement vase")
Product.create(name: "Face", price: 15.99, image: "cat-vase (5).jpg", description: "Decorative create flower arrangement vase")
Product.create(name: "Orniment", price: 15.99, image: "nordic-vase (5).jpg", description: "Decorative create flower arrangement vase")
Product.create(name: "Bowl Vase", price: 15.99, image: "vases.jpg", description: "Decorative create flower arrangement vase")
puts("16 Products Created")

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
puts("AdminUser Created")
