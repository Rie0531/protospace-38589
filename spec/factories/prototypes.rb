FactoryBot.define do
  factory :prototype do
    title              {Faker::Lorem.sentence}
    catch_copy         {Faker::Lorem.sentence}
    concept            {Faker::Lorem.sentence}
    association :user
  end
end
