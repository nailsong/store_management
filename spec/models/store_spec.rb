require 'rails_helper'

RSpec.describe Store, type: :model do
  it 'is valid with valid atrributes' do
    params = { name: 'Fooba', address: 'Rua teste, 10' }
    expect(Store.new(params)).to be_valid 
  end

  it 'is not valid without a name' do
    store = Store.new(name: nil)
    expect(store).to_not be_valid
  end

  it 'is not valid without a address' do
    store = Store.new(address: nil)
    expect(store).to_not be_valid
  end
end
