class CustomersController < ApplicationController
  def show
    @customers = Customer.find(params[:id])
  end
  
  def new 
  end
  
  def create
    @customers = Customer.new(customer_params)
    
    @customers.save
    redirect_to @customers
  end
  

  private
    def customer_params
      params.require(:customers).permit(:first_name, :last_name, :email, :phone, :street_address, :city_address, :state_address, :zip_code, :birthdate)
    end 

end
