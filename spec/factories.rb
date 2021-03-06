require 'faker'

FactoryGirl.define do
  factory :article do |a|
    a.title { Faker::Lorem.sentence }
    a.content { Faker::Lorem.paragraph }
    a.user_id { Faker::Number.number(3) }
  end

end