require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'is valid with valid attributes' do
    params = { name: 'TV', price: 100 }
    expect(Product.new(params)).to be_valid
  end

  it 'is not valid without a name' do
    product = Product.new(name: nil)
    expect(product).to_not be_valid
  end

  it 'is not valid without a price' do
    product = Product.new(price: nil)
    expect(product).to_not be_valid
  end
end
