require 'rails_helper'

RSpec.describe Employee, type: :model do

  #-------BASIC VALIDATIONS SPECCED OUT-----
  #it "is valid with valid attributes"
  #it "is not valid without a NIC"
  #it "is not valid without a firstName"
  #it "is not valid without a lastName"
  #it "is not valid without a login"
  #it "is not valid without a pwd"


  subject { described_class.new }
  subject { described_class.new(pwd: "some_password", login: "john@doe.com") }



  it "is valid with valid attributes" do

    #-------THE GREEN STEP-----------
    #expect(Employee.new(NIC: 'Anything')).to be_valid

    #-------REFACTORED SPEC----------
    subject.NIC = "Anything"
    expect(subject).to be_valid

  end

  it "is not valid without a NIC" do

    #-------THE RED STEP-----------
    #employee = Employee.new(NIC: nil)
    #expect(employee).to_not be_valid

    #-------REFACTORED SPEC--------
    expect(subject).to_not be_valid

  end

  it "is not valid without a firstName"
  it "is not valid without a lastName"

  describe "Validations" do

  it "is not valid without an login" do
    subject.login = nil
    expect(subject).to_not be_valid
    end

   it "is not valid without a pwd" do
     subject.pwd = nil
     expect(subject).to_not be_valid
   end

 end

end
