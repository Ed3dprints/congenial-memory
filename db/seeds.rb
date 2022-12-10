# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "🌱 Seeding products..."

    Category.create(
        name:"Architecture"
    )
    Category.create(
        name:"Accessories"
    ) 
    Category.create(
        name:"Engineering"
    ) 
    Category.create(
        name:"Electronics"
    )

    puts "🌱 done Seeding categories"

    15.times do 
  Product.create(
            name:Faker::Name.first_name,
            image_url: "https://images.unsplash.com/photo-1633899306328-c5e70574aaa2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8M2QlMjBwcmludGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
            description:Faker::Cannabis.buzzword ,
            price:rand(500..2000),
            category_id:rand(1..4) 
    
        )
    
    end
    Product.create(
        name:Faker::Name.first_name,
        image_url: "https://images.unsplash.com/photo-1612886649869-cf57f41907ca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8M2QlMjBwcmludHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        description:Faker::Cannabis.buzzword ,
        price:rand(500..2000),
        category_id:rand(1..4) 
    )
    Product.create(
        name:Faker::Name.first_name,
        image_url: "https://images.unsplash.com/photo-1597765206558-6f4e06954f2f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8M2QlMjBwcmludGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        description:Faker::Cannabis.buzzword ,
        price:rand(500..2000),
        category_id:rand(1..4) 
    )
    Product.create(
        name:Faker::Name.first_name,
        image_url: "https://images.unsplash.com/photo-1616427030011-214e41469f40?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8M2QlMjBwcmludGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        description:Faker::Cannabis.buzzword ,
        price:rand(500..2000),
        category_id:rand(1..4) 
    )
    Product.create(
        name:Faker::Name.first_name,
        image_url: "https://images.unsplash.com/photo-1611505908502-5b67e53e3a76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8M2QlMjBwcmludGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        description:Faker::Cannabis.buzzword ,
        price:rand(500..2000),
        category_id:rand(1..4) 
    )
    Product.create(
        name:Faker::Name.first_name,
        image_url: "https://images.unsplash.com/photo-1633899306328-c5e70574aaa2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8M2QlMjBwcmludGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        description:Faker::Cannabis.buzzword ,
        price:rand(500..2000),
        category_id:rand(1..4) 
    )
  
    puts "🌱 done Seeding"