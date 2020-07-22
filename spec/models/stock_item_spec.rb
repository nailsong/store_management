require 'rails_helper'

RSpec.describe StockItem, type: :model do
  it 'is valid with valid attributes' do
    product = Product.create(name: 'Cama', price: 200)
    store = Store.create(name: 'Loja foo', address: 'Rua bla, 10')
    params = {
      product_id: product.id,
      store_id: store.id,
      quantity: 5
    }
    expect(StockItem.new(params)).to be_valid
  end

  it 'is not valid without a product_id' do
    stock_item = StockItem.new(product_id: nil)
    expect(stock_item).to_not be_valid
  end

  it 'is not valid without a store_id' do
    stock_item = StockItem.new(store_id: nil)
    expect(stock_item).to_not be_valid
  end

  it 'is not valid without a quantity' do
    stock_item = StockItem.new(quantity: nil)
    expect(stock_item).to_not be_valid
  end
end
