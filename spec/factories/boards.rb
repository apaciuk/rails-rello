# frozen_string_literal: true

FactoryBot.define do
  factory :board do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    user { User.first || association(:user) }
  end
end
