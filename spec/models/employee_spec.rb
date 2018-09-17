require 'rails_helper'

RSpec.describe Employee, type: :model do
  subject { described_class.new }
  subject { described_class.new(pwd: "some_password", login: "john@doe.com") }
  it "is valid with valid attributes" do
    subject.firstName = "Anything"
  end

  it "is not valid without a NIC"
  it "is not valid without a firstName"
  it "is not valid without a login" do 
    subject.login = nil
  end
  it "is not valid without a pwd" do 
    subject.pwd = nil
  end
end

