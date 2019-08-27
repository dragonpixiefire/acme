require 'rails_helper'

RSpec.describe Product, type: :model do
  context "name" do
    it "is not valid with greater than 255 characters"
    it "is not valid if blank"
  end

  context "description" do
    it "is valid with greater than 255 characters"
  end

  context "category" do
    it "is not valid if blank"
    it "is not valid if nil"
    it "is valid with a value of either otc, prescription, or restricted"
  end
end


