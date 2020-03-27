class Customer < ApplicationRecord

  def phone=(num)
    num.gsub!(/\D/, '') if num.is_a?(String)
    super(num)
  end  

  # rspec unit test
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true  

end

