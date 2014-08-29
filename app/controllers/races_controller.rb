#encoding: utf-8
class RacesController < ApplicationController
  before_action :set_race, only: [:show, :edit, :update, :destroy]
  # GET /races
  # GET /races.json
  def index
    @search = Race.search(params[:q])
    @races = @search.result.order('nome')
  end

  # GET /races/1
  # GET /races/1.json
  def show
    @race = Race.find(params[:id])
  end

  # GET /races/new
  # GET /races/new.json
  def new
    @race = Race.new
  end

  # GET /races/1/edit
  def edit
    @race = Race.find(params[:id])
  end

  # POST /races
  # POST /races.json
  def create
    @race = Race.new(race_params)

    respond_to do |format|
      if @race.save
        format.html { redirect_to @race, notice: 'Uma nova raça foi criada com sucesso.' }
        format.json { render json: @race, status: :created, location: @race }
      else
        format.html { render action: "new" }
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /races/1
  # PATCH/races/1.json
  def update
    respond_to do |format|
      if @race.update_attributes(race_params)
        format.html { redirect_to @race, notice: 'A raça foi atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /races/1
  # DELETE /races/1.json
  def destroy
    @race.destroy

    respond_to do |format|
      format.html { redirect_to races_url }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race
      @race = Race.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def race_params
      params.require(:race).permit(:nome, :descr)
    end
end
