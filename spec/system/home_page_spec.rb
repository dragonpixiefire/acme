require 'rails_helper'

RSpec.describe 'Home Page Content', :type => :system do
    it 'is valid when it has the title proposed by marketing' do
        visit '/'
        expect(page).to have_text('Welcome to ACME® Barn Yard Veterinary Healthcare')
    end


    it 'has a link to the products page that mentions a count of products' do
    FactoryBot.create_list(:product, 5, published: true)
    FactoryBot.create_list(:product, 3, published: false)
    
    visit '/'
    expect(page).to have_link("Choose from 5 Products",  href: products_path)
    end
end

