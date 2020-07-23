class Api::V1::ProductController < ApplicationController
  def index
    product_with_stockitem
  end

  private

  def product_with_stockitem
    binding.pry
    @products = Product.all
  end
end
