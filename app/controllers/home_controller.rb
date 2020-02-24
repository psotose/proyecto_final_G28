class HomeController < ApplicationController
  
  
  def index
    @real_estate_brokers = RealEstateBroker.all
  end
end
