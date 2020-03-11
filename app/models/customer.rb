class Customer < ApplicationRecord
  # rspec unit test
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true  

  def self.search(search)
    if search.blank?
      scoped
    else
      Customer.where('first_name LIKE ?', "%#{search}")
    end
  end

end

