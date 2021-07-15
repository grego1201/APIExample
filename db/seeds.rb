people_count = 50
communicateds_count = 100
attachments_count = 150

people_count.times do
  Person.create( name: Faker::Name.name, birthday: Faker::Date.between(from: 100.years.ago, to: 1.day.ago))
end

communicateds_count.times do |i|
  attrs = {}
  attrs[:creator_id] = Person.ids.sample
  attrs[:receptor_id] = Person.ids.sample
  attrs[:subject] = Faker::Lorem.sentence
  attrs[:body] = Faker::Lorem.paragraph

  if i > 25
    attrs[:last_communicated_id] = Communicated.ids.sample
  end

  Communicated.create(attrs)
end

attachments_count.times do
  Attachment.create(communicated_id: Communicated.ids.sample)
end
