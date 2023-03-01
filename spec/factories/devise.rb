FactoryBot.define do
  factory :user do
    id { 153 }
    email { 'hu@hu.hu' }
    password { 'qwerty' }
    name { 'test user' }
    # Add additional fields as required via your User model
  end
end