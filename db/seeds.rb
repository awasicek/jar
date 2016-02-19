# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
andrea = User.create({username: "andrea72", name: "Andrea Anderson", email: "aanderson@gmail.com", password: "andrea123"})
jimmy = User.create({username: "jimmy2991", name: "Jimmy Hendricks", email: "jhendricks@aol.com", password: "jimmy123"})
bob = User.create({username: "bob0190", name: "Bob Feldman", email: "bfeldman@hotmail.com", password: "bob123"})
jill = User.create({username: "jill282", name: "Jill Smith", email: "jsmith@gmail.com", password: "jill123"})
