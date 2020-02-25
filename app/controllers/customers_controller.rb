class CustomersController < ApplicationController
  def new 
  end
  
  def create
    @customer = Customer.new(params.require(:customer).permit(:title,:text))

    @customer.save
    redirect_to @customer
  end

  private
    def customer_params
      params_require(:article).permit(:title, :text)
    end 
    
end
