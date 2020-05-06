require 'rails_helper'

RSpec.feature "Visitor can add a product to the cart", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    2.times do |n|
      @category.products.create!(
      name:  Faker::Hipster.sentence(3),
      description: Faker::Hipster.paragraph(4),
      image: open_asset('apparel1.jpg'),
      quantity: 10,
      price: 64.99
    )
    end
  end

  scenario "should go to a product's details" do
    # ACT
     p = Product.all.first

    visit root_path
    article = page.find('article', text: p.name).find(:button, 'Add')
    puts article
    article.click
    

    # DEBUG
    save_and_open_screenshot

    # VERIFY
    
    expect(page).to have_css('nav', text: "Jungle\nHome\nCategories \nAbout Us\n Admin \n My Cart (1)")

  end
end
