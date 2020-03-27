class CustomersController < ApplicationController
  helper_method :sort_column, :sort_direction
  
  def index
    @customers = Customer.order(sort_column + " " + sort_direction)
    if params[:search]
      @customers = CustomersQuery.new.first_name_search(params[:search])
    end     
  end
  
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

    #def search_scope
    #  @customers = Customer.order(sort_column + " " + sort_direction)
    #if params[:search]
    #  CustomersQuery.new.first_name_search(params[:search])
    #end  
    #end

    def customer_params
      params.require(:customers).permit(:first_name, :last_name, :email, :phone, :street_address, :city_address, :state_address, :zip_code, :birthdate)
    end 

    def sort_column
      Customer.column_names.include?(params[:sort]) ? params[:sort] : "first_name"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
    
end

