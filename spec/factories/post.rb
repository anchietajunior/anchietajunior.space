FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraph }

    trait :already_published do
      published { true }
    end

    trait :not_published do
      published { false }
    end

  end
end
