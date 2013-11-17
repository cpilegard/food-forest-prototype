# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Resource.create(name: "seeds")
Resource.create(name: "labor")
Resource.create(name: "compost")

Forest.create(name: "Ye Ol' Hipster Forest", city: "San Francisco")