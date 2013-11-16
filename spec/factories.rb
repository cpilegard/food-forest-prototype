FactoryGirl.define do
  factory :user do
    username 'nwargnier'
    email { Faker::Internet.email.capitalize }
    password 'password'
    password_confirmation 'password'
  end
end
