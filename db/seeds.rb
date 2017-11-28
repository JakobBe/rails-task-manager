puts "Data base is loading"

Task.destroy_all

10.times do
  task = Task.new(name: Faker::Ancient.god, description: Faker::ChuckNorris.fact, deadline: Faker::Date.forward(33), mark: false)

  puts "#{task.name} saved!" if task.save
end

puts "Seeding finished!"
