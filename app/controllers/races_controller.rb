#encoding: utf-8
class RacesController < ApplicationController
  before_action :set_race, only: %i[ show edit update destroy ]
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
        flash[:success] = 'Uma nova raça foi criada com sucesso.'
        format.html { redirect_to @race}
        format.json { render json: @race, status: :created, location: @race }
      else
        flash[:danger] = 'Houve um problema ao criar uma nova raça.'
        format.html { render action: "new" }
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /races/1
  # PATCH/races/1.json
  def update
    respond_to do |format|
      if @race.update(race_params)
        flash[:success] = 'A raça foi atualizada com sucesso.'
        format.html { redirect_to @race }
        format.json { head :no_content }
      else
        flash[:danger] = 'Houve um problema ao atualizar a raça'
        format.html { render action: "edit" }
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /races/1
  # DELETE /races/1.json
  def destroy
    respond_to do |format|
      if @race.destroy
        flash[:success] = 'A raça foi removida com sucesso.'
        format.html { redirect_to races_url }
        format.json { head :no_content }
      else
        flash[:danger] = 'Não foi possivel remover a raça: Há dependentes.'
        format.html { redirect_to races_url }
        format.json { head :no_content }
      end
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
