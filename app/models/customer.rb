class Customer < ApplicationRecord
  # list scopes
  # scope :
  # 
  
  def self.search(search)
    if search.blank?
      Customer.all
    else
      Customer.where('first_name LIKE ?', "%#{search}")
    end
  end

  def phone=(num)
    num.gsub!(/\D/, '') if num.is_a?(String)
    super(num)
  end  

  # rspec unit test
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true  



end

