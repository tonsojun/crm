class CustomersController < ApplicationController
  def new 
  end
  
  def create
    render plain: params[:customer].inspect
  end

  
end
