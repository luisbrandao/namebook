#encoding: utf-8
class ShipsController < ApplicationController
  before_action :set_ship, only: %i[ show edit update destroy ]
  # GET /ships
  # GET /ships.json
  def index
    @search = Ship.search(params[:q])
    @ships = @search.result.order('nome')
          .paginate(page: params[:page], per_page: 50)
  end

  # GET /ships/1
  # GET /ships/1.json
  def show
    @ship = Ship.find(params[:id])
  end

  # GET /ships/new
  # GET /ships/new.json
  def new
    @book = Book.order('nome')
    @ship = Ship.new
  end

  # GET /ships/1/edit
  def edit
    @ship = Ship.find(params[:id])
    @book = Book.order('nome')
  end

  # POST /ships
  # POST /ships.json
  def create
    @book = Book.order('nome')
    @ship = Ship.new(ship_params)

    respond_to do |format|
      if @ship.save
        flash[:success] = 'Uma nova nave foi criada com sucesso.'
        format.html { redirect_to @ship }
        format.json { render json: @ship, status: :created, location: @ship }
      else
        flash[:danger] = 'Houve um problema ao criar uma nova nave.'
        format.html { render action: "new" }
        format.json { render json: @ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ships/1
  # PUT /ships/1.json
  def update
    @book = Book.order('nome')
    respond_to do |format|
      if @ship.update(ship_params)
        flash[:success] = 'A nave foi atualizada com sucesso.'
        format.html { redirect_to @ship }
        format.json { head :no_content }
      else
        flash[:danger] = 'Houve um problema ao atualizar a nave.'
        format.html { render action: "edit" }
        format.json { render json: @ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ships/1
  # DELETE /ships/1.json
  def destroy
    respond_to do |format|
      if @ship.destroy
        flash[:success] = 'A nave foi removida com sucesso.'
        format.html { redirect_to ships_url }
        format.json { head :no_content }
      else
        flash[:danger] = 'Não foi possível remover a nave: Há dependentes.'
        format.html { redirect_to ships_url }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship
      @ship = Ship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_params
      params.require(:ship).permit(:nome, :descr, :base_type_id, :ship_size_id, :book_ids => [])
    end
end
