# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
work = Category.create(name: "Work")
costume = Category.create(name: "Costume")
holiday = Category.create(name: "Holiday")

Party.create([{name: "Flatiron Party",  category: work,  date: "2020-12-31", budget: 1000.00, private: true}])
Party.create([{name: "Halloween Party", category: costume, date: "2020-10-31", budget: 1.00, private: false}])
Party.create([{name: "Valentine's Party", category: holiday, date: "2021-2-14", budget: 666.66, private: true}])
Party.create([{name: "Fourth of July Party", category: holiday, date: "2021-4-7", budget: 50.00, private: true}])
Party.create([{name: "St. Patricks Party", category: holiday, date: "2021-3-14", budget: 2000.00, private: false}])
Party.create([{name: "Murder Mystery Party", category: costume, date: "2020-1-22", budget: 100.00, private: true}])



