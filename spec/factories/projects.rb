# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    project_procurement_management_plan_id 1
    code "MyString"
    status "MyString"
    mode_of_procurement "MyString"
    remarks "MyString"
  end
end
