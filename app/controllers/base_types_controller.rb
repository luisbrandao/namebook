#encoding: utf-8
class BaseTypesController < ApplicationController
  before_action :set_base_type, only: %i[ show edit update destroy ]
  # GET /base_types
  # GET /base_types.json
  def index
    @base_types = BaseType.order('nome')
  end

  # GET /base_types/1
  # GET /base_types/1.json
  def show
    @base_type = BaseType.find(params[:id])
  end

  # GET /base_types/new
  # GET /base_types/new.json
  def new
    @base_type = BaseType.new
  end

  # GET /base_types/1/edit
  def edit
    @base_type = BaseType.find(params[:id])
  end

  # POST /base_types
  # POST /base_types.json
  def create
    @base_type = BaseType.new(base_type_params)

    respond_to do |format|
      if @base_type.save
        flash[:success] = 'Um novo tipo de nave foi criado com sucesso.'
        format.html { redirect_to @base_type }
        format.json { render :show, status: :created, location: @base_type }
      else
        flash[:danger] = 'Houve um problema na criação do novo nome.'
        format.html { render action: "new" }
        format.json { render json: @base_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_types/1
  # PATCH/PUT /base_types/1.json
  def update
    respond_to do |format|
      if @base_type.update(base_type_params)
        flash[:success] = 'O tipo base foi atualizado com sucesso'
        format.html { redirect_to @base_type }
        format.json { head :no_content }
      else
        format.html { render :edit }
        format.json { render json: @base_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_types/1
  # DELETE /base_types/1.json
  def destroy
    @base_type.destroy

    respond_to do |format|
      format.html { redirect_to base_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_type
      @base_type = BaseType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def base_type_params
      params.require(:base_type).permit(:nome)
    end
end
