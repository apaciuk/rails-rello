# frozen_string_literal: true

FactoryBot.define do
  factory :service do
    user { nil }
    provider { 'MyString' }
    uid { 'MyString' }
    access_token { 'MyString' }
    access_token_secret { 'MyString' }
    refresh_token { 'MyString' }
    expires_at { '2022-10-07 14:40:27' }
    auth { 'MyText' }
  end
end
