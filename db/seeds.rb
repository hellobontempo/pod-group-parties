# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Party.create([{name: "Flatiron Party", date: "2020-12-31", budget: 1000.00, private: true}])
Party.create([{name: "Halloween Party", date: "2020-10-31", budget: 1.00, private: false}])
Party.create([{name: "Valentine's Party", date: "2021-2-14", budget: 666.66, private: true}])

