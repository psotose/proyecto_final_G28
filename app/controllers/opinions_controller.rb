class OpinionsController < ApplicationController
    before_action :set_opinion, only: [:show, :edit, :update, :destroy]
    before_action :set_real_estate_broker
    before_action :authenticate_user!

    def new
        @opinion = Opinion.new
    end    

    def edit    
    end    

    def create
        @opinion = Opinion.new(opinion_params)
        @opinion.real_estate_broker = RealEstateBroker.find(params[:real_estate_broker_id])
        @opinion.user = current_user
        if @opinion.save
            format.html { redirect_to @opinion.real_estate_broker, notice: 'Su comentario ha sido guardado con éxito!.' }
        else    
            format.html {render :new}
        end
    end  
    
    def update
        respond_to do |format|
            if @opinion.update(opinion_params)
                format.html { redirect_to @opinion, notice: 'Tu comentario se ha actualizado.' }
            else
                format.html { render :edit }   
            end
        end
    end  
    
    def destroy
        @opinion.destroy
        respond_to do |format|
            format.html { redirect_to opinions_url, notice: 'Tu comentario se ha eliminado!.' }
        end
    end
    
    private

        def set_opinion
            @opinion = Opinion.find(params[:id])
        end
        
        def set_real_estate_broker
            @real_estate_broker = RealEstateBroker.find(params[:real_estate_broker_id])
        end    
        
        def opinion_params
            params.require(:opinion).permit(:rating, :comment)
        end    
end
