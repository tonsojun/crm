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

  context 'scope tests' do
    let(:params) { {first_name: 'First', last_name: 'Last', email: 'sample@example.com'} }
    before(:each) do
      Customer.new(params).save
      Customer.new(params).save
      Customer.new(params.merge(active: true)).save
      Customer.new(params.merge(active: false)).save
      Customer.new(params.merge(active: false)).save
    end

    it 'should return active customers' do
      expect(Customer.active_customers.size).to eq(3)
    end

    it 'should return inactive customers' do
      expect(Customer.inactive_customers.size).to eq(2)
    end
  end

end