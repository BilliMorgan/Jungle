require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should not be valid without a name' do
      @category = Category.create(name: 'Bats')
      @product = Product.new(
          
          category_id: @category.id,
          quantity: 2,
          price: 987.65
      )
      @product.save
      
      expect(@product).to_not be_valid
    end

    it 'should not be valid without a category' do
      @category = Category.create(name: nil)
      @product = Product.new(
          name:  'Black Bats',
       
          quantity: 2,
          price: 987.65
       )
       @product.save
      expect(@product).to_not be_valid
    end
    it 'should not be valid without a quantity' do
      @category = Category.create(name: 'Bats')
      @product = Product.new(
          name:  'Black Bats',
          category_id: @category.id,
      
          price: 987.65
       )
       @product.save
      expect(@product).to_not be_valid
    end
    it 'should not be valid without a price' do
      @category = Category.create(name: 'Bats')
      @product = Product.new(
          name:  'Black Bats',
          category_id: @category.id,
          quantity: 2,
       
       )
       @product.save
      expect(@product).to_not be_valid
    end

    it 'should save a valid product' do
      @category = Category.create(name: 'Bats')
      @product = Product.new(
          name: "new bat",
          category_id: @category.id,
          quantity: 2,
          price: 987.65
      )
      @product.save
      expect(@product).to be_valid
    end
  end
end
