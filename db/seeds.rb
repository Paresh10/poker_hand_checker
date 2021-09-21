# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

suits =  [
  {
      name: 'hearts',
      url: "https://cdn-icons-png.flaticon.com/128/528/528280.png"
  },
  {
    name: 'diamonds',
    url: "https://cdn-icons-png.flaticon.com/128/458/458518.png"
  },
  {
    name: 'clubs',
    url: "https://cdn-icons-png.flaticon.com/128/318/318681.png"
  },
  {
    name: 'king',
    url: "https://cdn-icons-png.flaticon.com/128/1/1438.png"
  }
]

faces = [
  {
    value: 'Ace',
    url: "https://cdn-icons-png.flaticon.com/128/17/17807.png"
  },
  {
      value: 2,
      url: "https://cdn-icons-png.flaticon.com/128/3524/3524301.png"
  },
  {
    value: 3,
    url: "https://cdn-icons-png.flaticon.com/128/3521/3521984.png"
  },
  {
    value: 4,
    url: "https://cdn-icons-png.flaticon.com/128/3564/3564198.png"
  },
  {
    value: 5,
    url: "https://cdn-icons-png.flaticon.com/128/3521/3521878.png"
  },
  {
    value: 6,
    url: "https://cdn-icons-png.flaticon.com/128/3564/3564211.png"
  },
  {
    value: 7,
    url: "https://cdn-icons-png.flaticon.com/128/3564/3564219.png"
  },
  {
    value: 8,
    url: "https://cdn-icons-png.flaticon.com/128/3564/3564221.png"
  },
  {
    value: 9,
    url: "https://cdn-icons-png.flaticon.com/128/3564/3564231.png"
  },
  {
    value: 10,
    url: "https://cdn-icons-png.flaticon.com/128/4020/4020057.png"
  },
  {
    value: 'Jack',
    url: "https://cdn-icons-png.flaticon.com/128/3564/3564075.png"
  },
  {
    value: 'Queen',
    url: "https://cdn-icons-png.flaticon.com/128/84/84318.png"
  },
  {
    value: 'King',
    url: "https://cdn-icons-png.flaticon.com/128/3205/3205170.png"
  },
]


suits.each do |suit|
  Suit.create!(
    name: suit[:name],
    url: suit[:url]
  )
end


faces.each do |face|
  Face.create!(
    value: face[:value],
    url: face[:url]
  )
end
