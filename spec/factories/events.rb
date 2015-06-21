require 'faker'

FactoryGirl.define do
  factory :event do
    store nil
    customer_id "MyString"
    lat Faker::Address.latitude
    long Faker::Address.longitude
    event_at Faker::Time.backward(14, :evening)
  end
end
