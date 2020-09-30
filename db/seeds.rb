# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Client::User.find_or_create_by(
  name: 'Matheus Campos', email: 'silva.campos.matheus@gmail.com',
  phone: '+5581998765432', password: 'pass123'
)

Admin::User.find_or_create_by(
  name: 'Admin', email: 'admin@email.com',
  phone: '+5581999999999', password: 'pass123'
)