# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

shows = 100.times.map do 
  show = Show.create(
    show_name: Faker::TvShows::GameOfThrones.dragon,
    show_timing: Faker::Time.forward(days: 50,  period: :evening, format: :long)
  )
  show.channels << Channel.create( name: Faker::Company.name )
end

# channels = 100.times.map do
#   c = Channel.create( name: Faker::Company.name )
  
# end

# channels.each do |channel|
#   channel.shows << shows.name
# end
