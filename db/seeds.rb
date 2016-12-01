# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
  {name: 'Yoda',     email: 'yoda@lightside.com'},
  {name: 'Vader',    email: 'vader@darkside.com'},
  {name: 'Han Solo', email: 'hs@smuggler.com'}
])

Product.create([
  {title: 'Spare Green Lightsaber', description: 'It will kill all motherfucker Siths',      deadline: '2016-12-31 20:30:00', user_id: 1, min_bid: 250.5},
  {title: 'Spare Jedi Robes',       description: 'Nice Jedi clothing',                       deadline: '2016-12-31 20:30:00', user_id: 1, min_bid: 100},
  {title: 'Spare Red Lightsaber',   description: 'It will kill all motherfucker weak Jedis', deadline: '2016-12-31 20:30:00', user_id: 2, min_bid: 250.5},
  {title: 'Spare Sith Robes',       description: 'Nice Sith clothing',                       deadline: '2016-12-31 20:30:00', user_id: 2, min_bid: 100},
  {title: 'Millennium falcon',      description: 'A legendary starship',                     deadline: '2016-12-31 20:30:00', user_id: 3, min_bid: 1000.5},
  {title: 'Chewbacca',              description: 'A legendary Wookiee warrior',              deadline: '2016-12-31 20:30:00', user_id: 3, min_bid: 250}
])
