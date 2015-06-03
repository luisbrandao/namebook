#encoding: utf-8
class NamesController < ApplicationController
  before_action :set_name, only: [:show, :edit, :update, :destroy]
  
  # GET /names
  # GET /names.json
  def index
    @search = Name.search(params[:q])
    @names = @search.result.order('nome')
      .paginate(page: params[:page], per_page: 50)
  end

  # GET /names/1
  # GET /names/1.json
  def show
    @name = Name.find(params[:id])
  end

  # GET /names/new
  # GET /names/new.json
  def new
    @book = Book.order('nome')
    @name = Name.new
  end

  # GET /names/1/edit
  def edit
    @name = Name.find(params[:id])
    @book = Book.order('nome')
  end

  # POST /names
  # POST /names.json
  def create
    @book = Book.order('nome')
    @name = Name.new(name_params)

    respond_to do |format|
      if @name.save
        format.html { redirect_to @name, notice: 'Um novo nome foi criado com sucesso.' }
        format.json { render json: @name, status: :created, location: @name }
      else
        format.html { render action: "new" }
        format.json { render json: @name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /names/1
  # PATCH/PUT /names/1.json
  def update
    @book = Book.order('nome')
    respond_to do |format|
      if @name.update_attributes(name_params)
        format.html { redirect_to @name, notice: 'O nome foi atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /names/1
  # DELETE /names/1.json
  def destroy
    @name.destroy

    respond_to do |format|
      format.html { redirect_to names_url }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_name
      @name = Name.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def name_params
      params.require(:name).permit(:nome, :descr, :aparencia, :sexo, :race_id, :family_id, :book_ids => [])
    end
end
