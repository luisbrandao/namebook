#encoding: utf-8
class ShipSizesController < ApplicationController
  before_action :set_ship_size, only: [:show, :edit, :update, :destroy]
  # GET /ship_sizes
  # GET /ship_sizes.json
  def index
    @ship_sizes = ShipSize.order('nome')
  end

  # GET /ship_sizes/1
  # GET /ship_sizes/1.json
  def show
    @ship_size = ShipSize.find(params[:id])
  end

  # GET /ship_sizes/new
  # GET /ship_sizes/new.json
  def new
    @ship_size = ShipSize.new
  end

  # GET /ship_sizes/1/edit
  def edit
    @ship_size = ShipSize.find(params[:id])
  end

  # POST /ship_sizes
  # POST /ship_sizes.json
  def create
    @ship_size = ShipSize.new(ship_size_params)

    respond_to do |format|
      if @ship_size.save
        format.html { redirect_to @ship_size, notice: 'Um novo tamanho de nave foi criado com sucesso.' }
        format.json { render json: @ship_size, status: :created, location: @ship_size }
      else
        format.html { render action: "new" }
        format.json { render json: @ship_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ship_sizes/1
  # PUT /ship_sizes/1.json
  def update
    respond_to do |format|
      if @ship_size.update_attributes(ship_size_params)
        format.html { redirect_to @ship_size, notice: 'O tamanho de nave foi atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ship_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ship_sizes/1
  # DELETE /ship_sizes/1.json
  def destroy
    @ship_size.destroy

    respond_to do |format|
      format.html { redirect_to ship_sizes_url }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship_size
      @ship_size = ShipSize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_size_params
      params.require(:ship_size).permit(:nome, :descr)
    end
end


