require 'open-uri'

Car.destroy_all

user1 = User.create(email: "lucie.valentino@gmail.com", password: "valentino", first_name: "Lucie", last_name: "Valentino")

puts "Creating cars..."

car1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669383396/pexels-photo-9474172_qe890b.webp")
car2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669383396/uranus_kqo4ud.jpg")

car_photos = [
  { io: car1, filename: "planet1.jpg", content_type: "image/jpg" },
  { io: car2, filename: "planet2.jpg", content_type: "image/jpg" }
]

car_renault = Car.new(brand: "Ford", model: "Transit", address: "59 Avenue Charles de Gaulle 13140 Miramas", year_of_production: 2002, price_per_day: 45, user_id: user1)
car_renault.photos.attach(car_photos)
car_renault.save

puts "Cars created"
