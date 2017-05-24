require 'open-uri'
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Seeding amazing cats stuff: '
20.times do |i|
  puts "#{i+1}/30 \n"
  filename = JSON.parse(open('http://random.cat/meow').read)['file']
  Cat.create(remote_image_url: filename)
end