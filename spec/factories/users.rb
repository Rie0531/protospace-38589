FactoryBot.define do
  factory :user do
    name              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    profile            {Faker::Name.initials(number: 2)}
    occupation         {Faker::Name.initials(number: 2)}
    position           {Faker::Name.initials(number: 2)}
  end
end