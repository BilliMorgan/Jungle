require 'rails_helper'

RSpec.feature "Visitor navigates from home page to the product detail page", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    1.times do |n|
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
    expect(page).to have_text(p.name)
   
   
    product_article_elt = page.find(:xpath, '//a/h4', text: p.name)
    puts product_article_elt
    product_article_elt.click

    # DEBUG
    save_and_open_screenshot

    # VERIFY
    expect(page).to have_text("Description")

  end
end
