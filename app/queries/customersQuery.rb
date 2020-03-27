class CustomersQuery
  
  def initialize
  end

  def first_name_search(search)
    if search.blank?
      Customer.all
    else
      Customer.where('first_name LIKE ?', "%#{search}")
    end
  end

end
