# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
pokemon1 = Pokemon.new(name: 'Salameche')
pokemon1.photo_url = "http://res.cloudinary.com/kingofocean/image/upload/v1487947393/qgrmi692yfgrg3rcvzga.png"
pokemon1.save!
