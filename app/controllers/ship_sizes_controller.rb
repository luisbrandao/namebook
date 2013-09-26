class ShipSizesController < ApplicationController
  # GET /ship_sizes
  # GET /ship_sizes.json
  def index
    @ship_sizes = ShipSize.order('nome')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ship_sizes }
    end
  end

  # GET /ship_sizes/1
  # GET /ship_sizes/1.json
  def show
    @ship_size = ShipSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ship_size }
    end
  end

  # GET /ship_sizes/new
  # GET /ship_sizes/new.json
  def new
    @ship_size = ShipSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ship_size }
    end
  end

  # GET /ship_sizes/1/edit
  def edit
    @ship_size = ShipSize.find(params[:id])
  end

  # POST /ship_sizes
  # POST /ship_sizes.json
  def create
    @ship_size = ShipSize.new(params[:ship_size])

    respond_to do |format|
      if @ship_size.save
        format.html { redirect_to @ship_size, notice: 'Ship size was successfully created.' }
        format.json { render json: @ship_size, status: :created, location: @ship_size }
      else
        format.html { render action: "new" }
        format.json { render json: @ship_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ship_sizes/1
  # PUT /ship_sizes/1.json
  def update
    @ship_size = ShipSize.find(params[:id])

    respond_to do |format|
      if @ship_size.update_attributes(params[:ship_size])
        format.html { redirect_to @ship_size, notice: 'Ship size was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ship_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ship_sizes/1
  # DELETE /ship_sizes/1.json
  def destroy
    @ship_size = ShipSize.find(params[:id])
    @ship_size.destroy

    respond_to do |format|
      format.html { redirect_to ship_sizes_url }
      format.json { head :no_content }
    end
  end
end
