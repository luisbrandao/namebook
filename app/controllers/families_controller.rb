#encoding: utf-8
class FamiliesController < ApplicationController
  before_action :set_family, only: %i[ show edit update destroy ]

  # GET /families
  # GET /families.json
  def index
    @search = Family.search(params[:q])
    @families = @search.result.order('nome')
      .paginate(page: params[:page], per_page: 50)
  end

  # GET /families/1
  # GET /families/1.json
  def show
    @family = Family.find(params[:id])
  end

  # GET /families/new
  # GET /families/new.json
  def new
    @family = Family.new

    @book = Book.order('nome')
    @race = Race.order('nome')
  end

  # GET /families/1/edit
  def edit
    @family = Family.find(params[:id])
    @book = Book.order('nome')
    @race = Race.order('nome')
  end

  # POST /families
  # POST /families.json
  def create
    @book = Book.order('nome')
    @race = Race.order('nome')
    @family = Family.new(family_params)

    respond_to do |format|
      if @family.save
        flash[:success] = 'Uma nova família foi criada com sucesso.'
        format.html { redirect_to @family }
        format.json { render :show, status: :created, location: @family }
      else
        flash[:danger] = 'Houve um problema na criação da nova família.'
        format.html { render action: "new" }
        format.json { render json: @family.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /families/1
  # PATCH/PUT /families/1.json
  def update
    @book = Book.order('nome')
    @race = Race.order('nome')
    respond_to do |format|
      if @family.update(family_params)
        flash[:success] = 'A família foi atualizada com sucesso.'
        format.html { redirect_to @family }
        format.json { head :no_content }
      else
        flash[:danger] = 'Houve um problema ao atualizar a família.'
        format.html { render action: "edit" }
        format.json { render json: @family.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /families/1
  # DELETE /families/1.json
  def destroy
    respond_to do |format|
      if @family.destroy
        flash[:success] = 'A família foi removida com sucesso.'
        format.html { redirect_to families_url }
        format.json { head :no_content }
      else
        flash[:danger] = 'Não foi possivel remover a família: Há dependentes.'
        format.html { redirect_to families_url }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family
      @family = Family.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def family_params
      params.require(:family).permit(:nome, :descr, :book_ids => [], :race_ids => [] )
    end
end
