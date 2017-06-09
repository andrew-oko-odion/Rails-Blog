
require 'faker'
FactoryGirl.define do
  factory :post do
    title { Faker::Book.title }
    body { Faker::Lorem.paragraph(3) }
  end
end
