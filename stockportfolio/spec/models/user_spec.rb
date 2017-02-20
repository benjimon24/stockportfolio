require 'rails_helper'

RSpec.describe User do
  it "is valid with valid attributes" do
    expect(user).to be_valid
  end

  it "is not valid without a first_name" do
    user.first_name = nil
    expect(user).to_not be_valid
  end

  it "is not valid without a last_name" do
    user.last_name = nil
    expect(user).to_not be_valid
  end

  it "is not valid without a password" do
    user.password = nil
    expect(user).to_not be_valid
  end

  it "is not valid without a email" do
    user.email = nil
    expect(user).to_not be_valid
  end
end
