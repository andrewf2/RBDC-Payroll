# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    User.create(first_name: 'Admin', last_name: 'Admin', email: 'admin@rbdc.com', password: 'adminRBDC14!', role: 'admin', active: false)
User.create(first_name: 'Andrew', last_name: 'Ferguson', payrate: 10, email: 'andrewf02@gmail.com', password: 'Easton12', role: 'user', active: true)
    Project.create(name: 'SRA', budget: 65000)