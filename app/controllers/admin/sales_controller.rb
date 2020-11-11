class Admin::SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def new
    # @product = Product.new
  end

end
