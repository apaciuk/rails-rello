# frozen_string_literal: true

FactoryBot.define do
  factory :announcement do
    published_at { '2022-10-07 14:40:25' }
    announcement_type { 'MyString' }
    name { 'MyString' }
    description { 'MyText' }
  end
end
