#encoding: utf-8
class FamiliesController < ApplicationController
  before_action :set_family, only: [:show, :edit, :update, :destroy]

  # GET /families
  # GET /families.json
  def index
    @search = Family.search(params[:q])
    @families = @search.result
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
        format.html { redirect_to @family, notice: 'Uma nova família foi criada com sucesso.' }
        format.json { render action: 'show', status: :created, location: @family }
      else
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
      if @family.update_attributes(params[:family])
        format.html { redirect_to @family, notice: 'A família foi atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @family.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /families/1
  # DELETE /families/1.json
  def destroy
    @family.destroy

    respond_to do |format|
      format.html { redirect_to families_url }
      format.json { head :no_content }
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
