require 'rails_helper'

RSpec.describe Customer, type: :model do
  context 'validation tests' do 
    it 'ensures first name presence' do
      customer = Customer.new(last_name: 'Last', email: 'sample@example.com').save
      expect(customer).to eq(false)
    end

    it 'ensures last name presence' do 
      customer = Customer.new(last_name: 'First', email: 'sample@example.com').save
      expect(customer).to eq(false)
    end

    it 'ensures email presence' do
      customer = Customer.new(first_name: 'First', last_name: 'Last').save
      expect(customer).to eq(false)
    end

    it 'should save successfully' do
      customer = Customer.new(first_name: 'First', last_name: 'Last', email: 'sample@example.com').save
      expect(customer).to eq(true)
    end
  end

end