# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Artist.destroy_all
['The Doors',
 'The Doors',
 'Pink Floyd',
 'Ozzy Osbourne',
 'DJ Dado',
 'The Killers',
 'The Who'].each do |name|
    Artist.create name: name
  end

  # artist seeding up here...

  ['Universal',
   'Virgin',
   'Atlantic',
   'Geffen'
  ].each do |name|
    Label.find_or_create_by name: name
  end


  ['The Best of The Doors',
   'Waiting for the Sun',
   'Dark Side of the Moon',
   'Hot Fuss',
   'Battle Born',
   'Who Are You',
   'Live At Leeds',
   'No More Rain',
   'The X Files'
  ].each do |name|
    Album.find_or_create_by name: name 
  end
