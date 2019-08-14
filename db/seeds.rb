# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'destroying restaurants ...'

Restaurant.destroy_all

puts 'reloading restaurants ...'
restaurants_attributes = [
  {
    name: 'mcdo',
    address: '14 rue petit',
    phone_number: '0777258634',
    category: 'chinese'
  },
  {
    name: 'buffalo',
    address: '17 rue lor',
    phone_number: '0777147686',
    category: 'chinese'
  },
  {
    name: 'pitaya',
    address: '25 rue oberk',
    phone_number: '0777217456',
    category: 'chinese'
  },
  {
    name: 'five',
    address: '14 rue du gras',
    phone_number: '0777317142',
    category: 'chinese'
  },
  {
    name: 'le refuge des fondus',
    address: '28 rue montmartre',
    phone_number: '0712417196',
    category: 'chinese'
  }
]

Restaurant.create!(restaurants_attributes)
