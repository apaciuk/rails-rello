FactoryBot.define do
    factory :user do
      first_name { Faker::Name.first_name }
      last_name  { Faker::Name.last_name }
      email { Faker::Internet.email }
      admin { false }
      role { 0 } 
     password { Faker::Internet.password(min_length: 6) }
    end
  end 