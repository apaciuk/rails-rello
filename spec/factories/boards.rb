FactoryBot.define do
  factory :board do
    name { Faker::Lorem.word }
    user { User.first || association(:user) }
  end
end
