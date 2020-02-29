class Customer < ApplicationRecord
  scope :active_customers, -> { where(active: true) }
  scope :inactive_customers, -> { where(active: false) }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true  
end
