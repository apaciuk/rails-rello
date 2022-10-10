# frozen_string_literal: true

(1..10).each do |id|
  User.create!(
    # each user is assigned an id from 1-10
    id:,
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: 'password',
    password_confirmation: 'password',
    admin: %w[true false].sample,
    role: %w[admin member].sample
  )
end
# generate 10 boards
(1..10).each do |_id|
  Board.create!(
    name: Faker::Adjective.unique.positive,
    category: Faker::Book.genre,
    description: Faker::Lorem.paragraph,
    user_id: User.all.sample.id
  )
end

# end

# Not a perfect representation of the real time data.
