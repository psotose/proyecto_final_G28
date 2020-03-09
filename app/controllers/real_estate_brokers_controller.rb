class RealEstateBrokersController < ApplicationController
  before_action :set_real_estate_broker, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /real_estate_brokers
  # GET /real_estate_brokers.json
  def index
    @real_estate_brokers = current_user.real_estate_brokers
  end

  # GET /real_estate_brokers/1
  # GET /real_estate_brokers/1.json
  def show
    @opinions = Opinion.where(real_estate_broker: @real_estate_broker).order("created_at DESC")  
  end

  # GET /real_estate_brokers/new
  def new
    @real_estate_broker = RealEstateBroker.new
  end

  # GET /real_estate_brokers/1/edit
  def edit
  end

  # POST /real_estate_brokers
  # POST /real_estate_brokers.json
  def create
    @real_estate_broker = RealEstateBroker.new(real_estate_broker_params.merge(user:current_user))
    @real_estate_broker.user = current_user
    respond_to do |format|
      if @real_estate_broker.save
        format.html { redirect_to @real_estate_broker, notice: 'La corredora ha sido creada.' }
        format.json { render :show, status: :created, location: @real_estate_broker }
      else
        format.html { render :new }
        format.json { render json: @real_estate_broker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /real_estate_brokers/1
  # PATCH/PUT /real_estate_brokers/1.json
  def update
    respond_to do |format|
      if @real_estate_broker.update(real_estate_broker_params)
        format.html { redirect_to @real_estate_broker, notice: 'La información de la corredora ha sido modificada éxitosamente!.' }
        format.json { render :show, status: :ok, location: @real_estate_broker }
      else
        format.html { render :edit }
        format.json { render json: @real_estate_broker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /real_estate_brokers/1
  # DELETE /real_estate_brokers/1.json
  def destroy
    @real_estate_broker.destroy
    respond_to do |format|
      format.html { redirect_to real_estate_brokers_url, notice: 'Se ha eliminado la corredora.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_real_estate_broker
      @real_estate_broker = RealEstateBroker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def real_estate_broker_params
      params.require(:real_estate_broker).permit(:name, :rut, :agent, :mail, :phone, :image)
    end
end
