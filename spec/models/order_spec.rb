require 'rails_helper'

RSpec.describe Order, type: :model do

  # Customer.create(
  #   first_name: "yay",
  #   last_name: "yay",
  #   phone: "1234560789",
  #   email: "hello@gmail.com"
  # ) 


  subject { 
    Order.new(
      product_name: "Chocolate", 
      product_count: 2
      # customer_id: 1
    ) 
  }

  # it "is valid with valid attributes" do
  #   expect(subject).to be_valid
  # end

  it "is not valid without a product_name" do
    subject.product_name=nil
    expect(subject).to_not be_valid
  end

  it "is not valid when length less than 1" do
    subject.product_name=""
    expect(subject).to_not be_valid
  end

  it "is not valid without a product_count" do
    subject.product_count=nil
    expect(subject).to_not be_valid
  end

  it "is not valid when count is less than 1" do
    subject.product_count=0
    expect(subject).to_not be_valid
  end

  it "is not valid when count is not integer" do
    subject.product_count="1"
    expect(subject).to_not be_valid
  end

end