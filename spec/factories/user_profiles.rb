# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_profile do
    user_id ""
    first_name "MyString"
    last_name "MyString"
    avatar ""
    birthdate "2013-03-19"
    country "MyString"
    address "MyText"
    phone "MyString"
    cellphone "MyString"
    client_id ""
  end
end
