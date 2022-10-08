FactoryBot.define do
  factory :board do
    name { Faker::Lorem.word }
    user_id { User.all.sample.id }
  end
end
