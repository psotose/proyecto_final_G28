class HomeController < ApplicationController
  
  
  def index
    @real_estate_brokers = unless params[:q]
      RealEstateBroker.all
    else      
      RealEstateBroker.where('name ILIKE ?', "%#{params[:q]}%") 
    end 
  end                        
end
