class OrbTypesController < ApplicationController
  # GET /orb_types
  # GET /orb_types.json
  def index
    @orb_types = OrbType.order('nome')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orb_types }
    end
  end

  # GET /orb_types/1
  # GET /orb_types/1.json
  def show
    @orb_type = OrbType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orb_type }
    end
  end

  # GET /orb_types/new
  # GET /orb_types/new.json
  def new
    @orb_type = OrbType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orb_type }
    end
  end

  # GET /orb_types/1/edit
  def edit
    @orb_type = OrbType.find(params[:id])
  end

  # POST /orb_types
  # POST /orb_types.json
  def create
    @orb_type = OrbType.new(params[:orb_type])

    respond_to do |format|
      if @orb_type.save
        format.html { redirect_to @orb_type, notice: 'Orb type was successfully created.' }
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
    @orb_type = OrbType.find(params[:id])

    respond_to do |format|
      if @orb_type.update_attributes(params[:orb_type])
        format.html { redirect_to @orb_type, notice: 'Orb type was successfully updated.' }
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
    @orb_type = OrbType.find(params[:id])
    @orb_type.destroy

    respond_to do |format|
      format.html { redirect_to orb_types_url }
      format.json { head :no_content }
    end
  end
end
