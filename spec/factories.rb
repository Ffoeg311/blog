require 'faker'
require 'devise'

FactoryGirl.define do
  factory :article do |a|
    a.title { Faker::Lorem.sentence }
    a.content { Faker::Lorem.paragraph }
    a.user_id { Faker::Number.number(3) }
  end

  factory :user do |u|
    u.email { Faker::Internet.email }
    u.password { Faker::Internet.password(8) }
  end

end