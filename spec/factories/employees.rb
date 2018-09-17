FactoryGirl.define do
  factory :employee do
    NIC 1
    firstName 		{ Faker::Employee.firstName }
    lastName            { Faker::Employee.lastName }
    login 		{ Faker::Employee.login }
    pwd 		{ Faker::Employee.pwd }
  end
end
