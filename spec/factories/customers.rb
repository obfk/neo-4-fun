require 'faker'

FactoryGirl.define do
  factory :customer do
    sequence(:customer_id) { |n| "#{Faker::Lorem.characters(28)}#{n}" }
    zip Faker::Address.zip
    lat Faker::Address.latitude
    long Faker::Address.longitude
    events { Array.new(rand(10)) { FactoryGirl.build(:event) } }
  end
end
