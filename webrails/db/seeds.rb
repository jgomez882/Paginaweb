# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times { UserDatum.create({
             date: Faker::Date.between(30.days.ago, Date.today),
             cadency: rand(65..120),
             distance: rand(1..200),
             cardiacf: rand(40..197),
             weightd: rand(0..50),
         }) }