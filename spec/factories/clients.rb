# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
    name ""
    logo ""
    phone_number ""
    address ""
    email ""
    webpage "MyString"
  end
end
