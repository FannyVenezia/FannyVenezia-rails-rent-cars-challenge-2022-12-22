require 'open-uri'

Car.destroy_all

puts "Creating cars..."

red1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671746385/red2_hffnda.jpg")
red2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671746384/red3_ckebw5.jpg")
red3 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671746384/red_ohimap.webp")

red_photos = [
  { io: red1, filename: "car1.jpg", content_type: "image/jpg" },
  { io: red2, filename: "car2.jpg", content_type: "image/jpg" },
  { io: red3, filename: "car3.jpg", content_type: "image/jpg" }
]

car_red = Car.new(brand: "Clio", model: "C3", address: "2 Avenue de la République 13140 Miramas", year_of_production: 2010, price_per_day: 55, user_id: 6)
car_red.photos.attach(red_photos)
car_red.save!

puts "Creating cars..."

range_rover1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671746096/range-rover2_renphu.jpg")
range_rover2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671746096/range-rover3_qarr5t.jpg")
range_rover3 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671746098/range-rover_kl8qiv.jpg")

range_rover_photos = [
  { io: range_rover1, filename: "car1.jpg", content_type: "image/jpg" },
  { io: range_rover2, filename: "car2.jpg", content_type: "image/jpg" },
  { io: range_rover3, filename: "car3.jpg", content_type: "image/jpg" }
]

range_rover2 = Car.new(brand: "Range Rover", model: "Beast", address: "26 Avenue Saint-Exupéry 13250 Saint-Chamas", year_of_production: 2020, price_per_day: 70, user_id: 6)
range_rover2.photos.attach(range_rover_photos)
range_rover2.save!

puts "Creating cars..."

old1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671746691/old_cqoaxy.jpg")
old2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671746691/old2_wfxe2f.jpg")
old3 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671746691/old3_xh5vdp.webp")

old_photos = [
  { io: old1, filename: "car1.jpg", content_type: "image/jpg" },
  { io: old2, filename: "car2.jpg", content_type: "image/jpg" },
  { io: old3, filename: "car3.jpg", content_type: "image/jpg" }
]

car_old = Car.new(brand: "Volkswagen", model: "Loom", address: "100 Rue Henri Coste 13140 Miramas", year_of_production: 1972, price_per_day: 95, user_id: 6)
car_old.photos.attach(old_photos)
car_old.save!

puts "Creating cars..."

ford_21 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671745867/ford2_g0suuh.jpg")
ford_22 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671745867/ford_x23cox.jpg")
ford_23 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671745866/ford3_sg1vjw.jpg")

ford_2_photos = [
  { io: ford_21, filename: "car1.jpg", content_type: "image/jpg" },
  { io: ford_22, filename: "car2.jpg", content_type: "image/jpg" },
  { io: ford_23, filename: "car3.jpg", content_type: "image/jpg" }
]

car_ford_2 = Car.new(brand: "Ford", model: "Lica", address: "4 Rue des Baumes 13008 Istres", year_of_production: 2021, price_per_day: 105, user_id: 6)
car_ford_2.photos.attach(ford_2_photos)
car_ford_2.save!

porsche1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671744236/porsche_oe2i7t.jpg")
porsche2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671744236/porsche2_kq5cyb.jpg")
porsche3 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671744236/porsche3_cyvpoe.jpg")

porsche_photos = [
  { io: porsche1, filename: "car1.jpg", content_type: "image/jpg" },
  { io: porsche2, filename: "car2.jpg", content_type: "image/jpg" },
  { io: porsche3, filename: "car3.jpg", content_type: "image/jpg" }
]

car_porsche = Car.new(brand: "Porsche", model: "Transit", address: "21 Rue Haxo 13001 Marseille", year_of_production: 2018, price_per_day: 85, user_id: 6)
car_porsche.photos.attach(porsche_photos)
car_porsche.save!

ford1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671744673/ford4_k2qm2w.jpg")
ford2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671744671/ford5_q3qeqf.jpg")
ford3 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671744674/ford6_kour5n.jpg")

ford_photos = [
  { io: ford1, filename: "car1.jpg", content_type: "image/jpg" },
  { io: ford2, filename: "car2.jpg", content_type: "image/jpg" },
  { io: ford3, filename: "car3.jpg", content_type: "image/jpg" }
]

car_ford = Car.new(brand: "Ford", model: "J5", address: "59 Avenue Charles de Gaulle 13140 Miramas", year_of_production: 2002, price_per_day: 45, user_id: 6)
car_ford.photos.attach(ford_photos)
car_ford.save!

puts "Creating cars..."

bmw1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671745611/bmw_ya1kjs.jpg")
bmw2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671745610/bmw3_nszgki.webp")
bmw3 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671745610/bmw2_r5dlaa.jpg")

bmw_photos = [
  { io: bmw1, filename: "car1.jpg", content_type: "image/jpg" },
  { io: bmw2, filename: "car2.jpg", content_type: "image/jpg" },
  { io: bmw3, filename: "car3.jpg", content_type: "image/jpg" }
]

car_bmw = Car.new(brand: "Bmw", model: "Jag", address: "12 Rue de Provence 13140 Miramas", year_of_production: 2012, price_per_day: 65, user_id: 6)
car_bmw.photos.attach(bmw_photos)
car_bmw.save!

puts "Creating cars..."

renault1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671746963/renault3_nyqojh.jpg")
renault2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671746963/renault2_kovj3v.jpg")
renault3 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671746963/renault_jqsxmt.webp")

renault_photos = [
  { io: renault1, filename: "car1.jpg", content_type: "image/jpg" },
  { io: renault2, filename: "car2.jpg", content_type: "image/jpg" },
  { io: renault3, filename: "car3.jpg", content_type: "image/jpg" }
]

car_renault = Car.new(brand: "Renault", model: "V8", address: "100 Rue Terrusse 13005 Marseille", year_of_production: 2019, price_per_day: 125, user_id: 6)
car_renault.photos.attach(renault_photos)
car_renault.save!

puts "Creating cars..."

blue1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671747232/blue2_emrwuu.jpg")
blue2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671747231/blue3_fixh7b.jpg")
blue3 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1671747231/blue_gaa2uo.jpg")

blue_photos = [
  { io: blue1, filename: "car1.jpg", content_type: "image/jpg" },
  { io: blue2, filename: "car2.jpg", content_type: "image/jpg" },
  { io: blue3, filename: "car3.jpg", content_type: "image/jpg" }
]

car_blue = Car.new(brand: "hyundai", model: "K22", address: "2 Impasse des Lavances 30400 Villeneuve-lès-Avignon", year_of_production: 2005, price_per_day: 65, user_id: 6)
car_blue.photos.attach(blue_photos)
car_blue.save!

puts "Cars created"
