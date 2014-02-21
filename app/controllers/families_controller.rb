#encoding: utf-8
class FamiliesController < ApplicationController
  # GET /families
  # GET /families.json
  def index
    @search = Family.search(params[:q])
    @families = @search.result
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @families }
    end
  end

  # GET /families/1
  # GET /families/1.json
  def show
    @family = Family.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @family }
    end
  end

  # GET /families/new
  # GET /families/new.json
  def new
    @book = Book.order('nome')
    @race = Race.order('nome')
    @family = Family.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @family }
    end
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
    @family = Family.new(params[:family])

    respond_to do |format|
      if @family.save
        format.html { redirect_to @family, notice: 'Uma nova família foi criada com sucesso.' }
        format.json { render json: @family, status: :created, location: @family }
      else
        format.html { render action: "new" }
        format.json { render json: @family.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /families/1
  # PUT /families/1.json
  def update
    @family = Family.find(params[:id])

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
    @family = Family.find(params[:id])
    @family.destroy

    respond_to do |format|
      format.html { redirect_to families_url }
      format.json { head :no_content }
    end
  end
end
