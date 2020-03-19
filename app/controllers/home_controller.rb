class HomeController < ApplicationController
  
  def index
    @real_estate_brokers = unless params[:q]
      RealEstateBroker.page(params[:page])
    else      
      RealEstateBroker.where('name ILIKE ?', "%#{params[:q]}%") 
    end 
   
  end                        
end
