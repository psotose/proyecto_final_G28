class HomeController < ApplicationController
  
  def index
    @real_estate_brokers = unless params[:q]
      RealEstateBroker.all
    else      
      RealEstateBroker.where('name ILIKE ?', "%#{params[:q]}%") 
    end 
    @real_estate_brokers = @real_estate_brokers.order_by_opinion
  end                        
end
