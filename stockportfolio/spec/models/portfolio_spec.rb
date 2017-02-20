require 'rails_helper'

RSpec.describe Portfolio do
  let(:portfolio) {create(:portfolio)}
  it "is valid with valid attributes" do
    expect(portfolio).to be_valid
  end
end
