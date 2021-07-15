50.times do |_|
  Person.create( name: Faker::Name.name, birthday: Faker::Date.between(from: 100.years.ago, to: 1.day.ago))
end
