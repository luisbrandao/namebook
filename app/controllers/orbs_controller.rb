#encoding: utf-8
class OrbsController < ApplicationController
  before_action :set_orb, only: [:show, :edit, :update, :destroy]
  # GET /orbs
  # GET /orbs.json
  def index
    @search = Orb.search(params[:q])
    @orbs = @search.result.order('nome')
      .paginate(page: params[:page], per_page: 50)
  end

  # GET /orbs/1
  # GET /orbs/1.json
  def show
    @orb = Orb.find(params[:id])
  end

  # GET /orbs/new
  # GET /orbs/new.json
  def new
    @book = Book.order('nome')
    @orb = Orb.new
  end

  # GET /orbs/1/edit
  def edit
    @orb = Orb.find(params[:id])
    @book = Book.order('nome')
  end

  # POST /orbs
  # POST /orbs.json
  def create
    @book = Book.order('nome')
    @orb = Orb.new(orb_params)

    respond_to do |format|
      if @orb.save
        flash[:success] = 'Um novo corpo celeste foi criado com sucesso.'
        format.html { redirect_to @orb}
        format.json { render json: @orb, status: :created, location: @orb }
      else
        flash[:danger] = 'Houve um problema na criação do novo corpo celeste.'
        format.html { render action: "new" }
        format.json { render json: @orb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orbs/1
  # PUT /orbs/1.json
  def update
    @book = Book.order('nome')
    @orb = Orb.find(params[:id])

    respond_to do |format|
      if @orb.update_attributes(orb_params)
        flash[:success] = 'O corpo celeste foi atualizado com sucesso.'
        format.html { redirect_to @orb}
        format.json { head :no_content }
      else
        flash[:danger] = 'Houve um problema ao atualizar o corpo celeste.'
        format.html { render action: "edit" }
        format.json { render json: @orb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orbs/1
  # DELETE /orbs/1.json
  def destroy
    @orb.destroy

    respond_to do |format|
      format.html { redirect_to orbs_url }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_orb
      @orb = Orb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orb_params
      params.require(:orb).permit(:nome, :descr, :orb_type_id, :orbit_id, :book_ids => [])
    end
end
