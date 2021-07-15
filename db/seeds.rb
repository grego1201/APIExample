50.times do |_|
  Person.create( name: Faker::Name.name, birthday: Faker::Date.between(from: 100.years.ago, to: 1.day.ago))
end

100.times do |i|
  if i > 25
    last_communicated = Communicated.find(rand(i))
  end

  creator = Person.find(rand(50) + 1)
  receptor = Person.find(rand(50) + 1)

  Communicated.create(creator: creator, receptor: receptor, last_communicated: last_communicated,
                      subject: Faker::Lorem.sentence, body: Faker::Lorem.paragraph)
end

150.times do |_|
  communicated = Communicated.find(rand(100) + 1)
  Attachment.create(communicated: communicated)
end
