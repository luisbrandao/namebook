#encoding: utf-8
class OrbTypesController < ApplicationController
  before_action :set_orb_type, only: [:show, :edit, :update, :destroy]
  # GET /orb_types
  # GET /orb_types.json
  def index
    @orb_types = OrbType.order('nome')
  end

  # GET /orb_types/1
  # GET /orb_types/1.json
  def show
    @orb_type = OrbType.find(params[:id])
  end

  # GET /orb_types/new
  # GET /orb_types/new.json
  def new
    @orb_type = OrbType.new
  end

  # GET /orb_types/1/edit
  def edit
    @orb_type = OrbType.find(params[:id])
  end

  # POST /orb_types
  # POST /orb_types.json
  def create
    @orb_type = OrbType.new(orb_type_params)

    respond_to do |format|
      if @orb_type.save
        format.html { redirect_to @orb_type, notice: 'Um novo tipo de corpo celeste foi criado.' }
        format.json { render json: @orb_type, status: :created, location: @orb_type }
      else
        format.html { render action: "new" }
        format.json { render json: @orb_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orb_types/1
  # PUT /orb_types/1.json
  def update
    respond_to do |format|
      if @orb_type.update_attributes(orb_type_params)
        format.html { redirect_to @orb_type, notice: 'O corpo celeste foi atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orb_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orb_types/1
  # DELETE /orb_types/1.json
  def destroy
    @orb_type.destroy

    respond_to do |format|
      format.html { redirect_to orb_types_url }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orb_type
      @orb_type = OrbType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orb_type_params
      params.require(:orb_type).permit(:nome)
    end
end
