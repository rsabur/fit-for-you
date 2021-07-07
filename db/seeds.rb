# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

OutfitClothing.destroy_all
Closet.destroy_all
User.destroy_all
Outfit.destroy_all
Clothing.destroy_all

User.create(name: "Radiyah", gender: "f", img_url: "https://ca.slack-edge.com/T02MD9XTF-U01MS0E5UGM-b6e1d5ff3843-512", email: "r@r.com", password: "abc123")
User.create(name: "Mathew", gender: "m", img_url: "https://ca.slack-edge.com/T02MD9XTF-U01NN9ERSNM-3db34d69031b-512", email: "m@m.com", password: "abc123")

# 5.times do 
#     Clothing.create(name: Faker::Superhero.name, img_url: Faker::LoremFlickr.image(size: "50x60"), description: Faker::Restaurant.description, category: "Shirt", gender: Faker::Gender.short_binary_type)
# end
# 5.times do 
#     Clothing.create(name: Faker::Superhero.name, img_url: Faker::LoremFlickr.image(size: "50x60"), description: Faker::Restaurant.description, category: "Pant", gender: Faker::Gender.short_binary_type)
# end
# 5.times do 
#     Clothing.create(name: Faker::Superhero.name, img_url: Faker::LoremFlickr.image(size: "50x60"), description: Faker::Restaurant.description, category: "Shoe", gender: Faker::Gender.short_binary_type)
# end
# 5.times do 
#     Clothing.create(name: Faker::Superhero.name, img_url: Faker::LoremFlickr.image(size: "50x60"), description: Faker::Restaurant.description, category: "Accessory", gender: Faker::Gender.short_binary_type)
# end


Clothing.create(name: "Black T-Shirt", img_url: "Mens - Black Tee.png" , description: "Black short sleeve t-shirt made of 100% cotton. ", category: "Shirt", gender: "M")
Clothing.create(name: "Coat", img_url: "Mens - Blue Bubble Coat.jpg" , description: "Blue bubble coat made of 100% down feathers.", category: "Shirt", gender: "M")
Clothing.create(name: "Winter Boots", img_url: "Mens - Brown Boots.jpg" , description: "Brown winter boots made from 100% Italian leather.", category: "Shoe", gender: "M")
Clothing.create(name: "Dress Boots", img_url: "Mens - Brown Dress Shoes.jpg" , description: "Brown dress boot made of 100% Italian leather.", category: "Shoe", gender: "M")
Clothing.create(name: "Chinos", img_url: "Mens - Chinos.jpg" , description: "Chinos made to last while maintaining superior comfort.", category: "Pant", gender: "M")
Clothing.create(name: "Blue Jeans", img_url: "Mens - Dark Blue Jeans.jpg" , description: "Dark blue 5 pocket boot leg jeans.", category: "Pant", gender: "M")
Clothing.create(name: "Fancy Watch", img_url: "Mens - Fancy Watch.jpg" , description: "30mm watch with Gold and Platinum links.", category: "Accessory", gender: "M")
Clothing.create(name: "Green Sweater", img_url: "Mens - Green Crew Neck Sweatshirt.jpg" , description: "100% Cashmere sweater", category: "Shirt", gender: "M")
Clothing.create(name: "Grey Sunglasses", img_url: "Mens - Grey Sunglasses with Black Tint.jpg" , description: "Coolest shades on the planet. Dark grey frames with black tinted lenses.", category: "Accessory", gender: "M")
Clothing.create(name: "Sleeveless Jacket", img_url: "Mens - Light Blue Jean Jacket.png" , description: "Light blue distressed sleeveless jean jacket.", category: "Shirt", gender: "M")
Clothing.create(name: "Light Blue Jeans", img_url: "Mens - Light Blue Jeans.png" , description: "5 pocket Light blue straight leg jeans.", category: "Pant", gender: "M")
Clothing.create(name: "Grey T-Shirt", img_url: "Mens - Light Gray Tee.png" , description: "Light grey 100% cotton short sleeve t-shirt", category: "Shirt", gender: "M")
Clothing.create(name: "Baseball Cap", img_url: "Mens - Light Grey Baseball Cap.jpg" , description: "Light grey baseball cap with black accents.", category: "Accessory", gender: "M")
Clothing.create(name: "Multi-Colored Sneakers", img_url: "Mens - Multi-Colored Sneakers.jpg" , description: "Showstopping multi-color sneakers will have you being the freshes on the block.", category: "Shoe", gender: "M")
Clothing.create(name: "Navy Boat Shoes", img_url: "Mens - Navy Blue Boat Shoes.jpg" , description: "Navy and white boat shoes. Go boating this summer with the freshes boat shoes out!", category: "Shoe", gender: "M")
Clothing.create(name: "Straw Hat", img_url: "Mens - Straw Hat.jpg" , description: "Be like Dapper Dan with this sand colored straw fedora with black ribbon. Stay Fresh!", category: "Accessory", gender: "M")

Clothing.create(name: "Black Boots", img_url: "Womens - Black Boots.png" , description: 'Black 1" heeled boot made for comfort and style', category: "Shoe", gender: "F")
Clothing.create(name: "Black Shoulder Bag", img_url: "Womens - Black Purse.png" , description: "Be a showstopper in this versatile black shoulder bag.", category: "Accessory", gender: "F")
Clothing.create(name: "Camel Boots", img_url: "Womens - Camel Heeled Boot.jpg" , description: 'Turn heads in these 3" camel side zip boots.', category: "Shoe", gender: "F")
Clothing.create(name: "Gold Circle Necklace", img_url: "Womens - Circle Pendant Necklace.png" , description: "Check this circle gold pendant necklase.", category: "Accessory", gender: "F")
Clothing.create(name: "Nude Slingbacks", img_url: "Womens - Floral Embossed Nude Slingback Heels.jpg" , description: 'These one of a kind 3.5" floral embossed slingbacks are the perfect date night shoe.' , category: "Shoe", gender: "F")
Clothing.create(name: "Green Handbag", img_url: "Womens - Green Handbag.jpg" , description: "The perfect day bag in vibrant green is sure to make a statement.", category: "Accessory", gender: "F")
Clothing.create(name: "Light Blue Jeans", img_url: "Womens - Light Blue Cropped Mom Jeans.png" , description: "The most comfortable cropped mom jeans out. Get them while they're hot! 🔥", category: "Pant", gender: "F")
Clothing.create(name: "Jean Skirt", img_url: "Womens - Light Blue Jean Mini Skirt.jpg" , description: "Check out these flattering button front mini jean skirt. Sure to be an outfit staple for any season.", category: "Pant", gender: "F")
Clothing.create(name: "Pink Sweater", img_url: "Womens - Light Pink Sweatshirt.jpg" , description: "100% cashmere cable knit sweater for those cooler months by the fire.", category: "Shirt", gender: "F")
Clothing.create(name: "Blue Shimmer Top", img_url: "Womens - Midnight Blue Shimmer Top.jpg" , description: "Midnight blue top with an added shimmer to take your jeans from day to night.", category: "Shirt", gender: "F")
Clothing.create(name: "Navy Sneakers", img_url: "Womens - Navy and White Sneakers with Pink Laces.jpg" , description: "You'll be walking in comfort with these navy blue and white walking sneakers with pink laces.", category: "Shoe", gender: "F")
Clothing.create(name: "Navy Midi Skirt", img_url: "Womens - Navy Pleated Midi Skirt.png" , description: "Walk down the street with the fun of some flare with this pleated midi skirt.", category: "Pant", gender: "F")
Clothing.create(name: "Pink Handbag", img_url: "Womens - Pink Purse.jpg" , description: "Check out this pretty in pink daytime handbag. For the girl who loves to be girly.", category: "Accessory", gender: "F")
Clothing.create(name: "Pink Wallet", img_url: "Womens - Pink Wallet.png" , description: "Cutes wallet in a precious pink with bow detail.", category: "Accessory", gender: "F")
Clothing.create(name: "Knitted Sweatshirt", img_url: "Womens - Sand Sweater.png" , description: "Stay warm in this 100% alpaca wool knitted sweatshirt straight from Peru!", category: "Top", gender: "F")
Clothing.create(name: "Silver Ring", img_url: "Womens - Silver Ring with Black Jewels.jpg" , description: "Silver cable ring with black jewels. A ring so precious even Smeagol wants it.", category: "Accessory", gender: "F")
Clothing.create(name: "Smart Watch", img_url: "Womens - Smart Watch.jpg" , description: "Track your health with this stylish and compact smart watch in white.", category: "Accessory", gender: "F")
Clothing.create(name: "White Sunglasses", img_url: "Womens - White Sunglasses with Medium Tint.png" , description: "Protect your eyes with these stylish white sunglasses with brown tint.", category: "Accessory", gender: "F")



5.times do
    Closet.create(user_id: User.all.sample.id, clothing_id: Clothing.all.sample.id)
end

5.times do 
    Outfit.create(name: rand(1..5), user_id: User.all.sample.id)
end

5.times do 
    OutfitClothing.create(outfit_id: Outfit.all.sample.id, clothing_id: Clothing.all.sample.id)
end


puts "Seeded Successfully"