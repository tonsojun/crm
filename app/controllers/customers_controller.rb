class CustomersController < ApplicationController
  def show
    @customers = Customer.find(params[:id])
  end

  def new 
  end
  
  def create
    @customers = Customer.new(params.permit(:first_name, :last_name, :email, :phone, :street_address, :city_address, :state_address, :zip_code, :birthdate))

    @customers.save
    redirect_to @customers
  end


  private
    def customer_params
      params_require(:article).permit(:first_name, :last_name, :email, :phone, :street_address, :city_address, :state_address, :zip_code, :birthdate)
    end 

end
