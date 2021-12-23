# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gender.create(name: 'Male')
Gender.create(name: 'Female')

# u = User.create(name: 'a', email: 'a@a.a', password_hash: 'a')
# c = Client.create(age: 20, gender_id: 1)
# c.user = u

# puts u.inspect
# puts c.inspect
# puts u.client.inspect
# puts c.user.inspect

u = User.create(name: 'a', email: 'a@a.a', password_hash: 'a')
c = Client.create(age: 20, gender_id: 1)
c.user = u

puts c.inspect
puts c.gender.name
