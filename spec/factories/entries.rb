# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry do
    title "entry title"
    content "entry content"
    category
  end
end
