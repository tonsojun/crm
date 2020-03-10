class Customer < ApplicationRecord
  # rspec unit test
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true  

  def self.search(search)
    if search
      # find(:all) is deprecated
      #find(:all, :conditions => ['name LIKE ?', "%#{search}"]) 
      Customer.where(['first_name LIKE ?', "%#{search}"])
    else
      #find(:all)
      Customer.where()
    end
  end

end


