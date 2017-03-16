# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
u1 = User.create :name => 'Princesass Quitlove', :email => 'osullivan.naomi@gmail.com', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'true'
u2 = User.create :name => 'Bananna', :email => 'bananna@bananna.com', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false'

Poem.destroy_all
p1 = Poem.create :title => "Life", :content => "Poems are hard to do, except when you're doing a poo."
p2 = Poem.create :title => "An ode to code", :content => "Code on the road, swerve for the toad, there goes your load."

Category.destroy_all
c1 = Category.create :name => 'Short and Sweet', :description => 'Short and to the point, could be sweet or sour.'

# Favourite.destroy_all
# f1 = Favourite.create :user_id => u1.id, :poem_id => p2.id

u1.poems << p1
u2.poems << p2

p1.categories << c1
p2.categories << c1
