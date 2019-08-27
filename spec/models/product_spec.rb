require 'rails_helper'

RSpec.describe Product, type: :model do
  context "name" do
    it "is not valid with greater than 255 characters" do
      name = (0...270).map { (65 + rand(26)).chr }.join
      product = create(:product)
      product.name = name
      expect(product).to_not be_valid
    end

    it "is not valid if blank" do
      product = create(:product)
      product.name = ""
      expect(product).to_not be_valid
    end
  end

  context "description" do
    it "is valid with greater than 255 characters" do
      description = (0...270).map { (65 + rand(26)).chr }.join
      product = create(:product)
      product.description = description
      expect(product).to be_valid
    end
  
  end

  context "category" do
    it "is not valid if blank" do
      product = create(:product)
      product.category = ""
      expect(product).to_not be_valid
    end

    it "is not valid if nil" do
      product = create(:product)
      product.category = nil
      expect(product).to_not be_valid
    end
    it "is valid with a value of either otc, prescription, or restricted" do
    product = create(:product)
    product.category = "otc"
    expect(product).to be_valid
    product.category = "prescription"
    expect(product).to be_valid
    product.category = "restricted"
    expect(product).to be_valid
    end

  end
end


