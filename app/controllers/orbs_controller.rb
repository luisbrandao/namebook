class OrbsController < ApplicationController
  # GET /orbs
  # GET /orbs.json
  def index
    @orbs = Orb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orbs }
    end
  end

  # GET /orbs/1
  # GET /orbs/1.json
  def show
    @orb = Orb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orb }
    end
  end

  # GET /orbs/new
  # GET /orbs/new.json
  def new
    @orb = Orb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orb }
    end
  end

  # GET /orbs/1/edit
  def edit
    @orb = Orb.find(params[:id])
  end

  # POST /orbs
  # POST /orbs.json
  def create
    @orb = Orb.new(params[:orb])

    respond_to do |format|
      if @orb.save
        format.html { redirect_to @orb, notice: 'Orb was successfully created.' }
        format.json { render json: @orb, status: :created, location: @orb }
      else
        format.html { render action: "new" }
        format.json { render json: @orb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orbs/1
  # PUT /orbs/1.json
  def update
    @orb = Orb.find(params[:id])

    respond_to do |format|
      if @orb.update_attributes(params[:orb])
        format.html { redirect_to @orb, notice: 'Orb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orbs/1
  # DELETE /orbs/1.json
  def destroy
    @orb = Orb.find(params[:id])
    @orb.destroy

    respond_to do |format|
      format.html { redirect_to orbs_url }
      format.json { head :no_content }
    end
  end
end
