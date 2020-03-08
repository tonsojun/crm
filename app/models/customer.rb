class Customer < ApplicationRecord
  # rspec unit test
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true  
end
