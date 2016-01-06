User.create!(name: 'A', email: 'a@mail.com', password: 'password')

Article.delete_all

Article.create!(title: 'Article 1', content: 'Stuff')
Article.create!(title: 'Article 2', content: 'More Stuff')
Article.create!(title: 'Article 3', content: 'Different Stuff')
Article.create!(title: 'Article 4', content: 'Extra Stuff')

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
