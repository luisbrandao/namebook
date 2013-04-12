class BaseTypesController < ApplicationController
  # GET /base_types
  # GET /base_types.json
  def index
    @base_types = BaseType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @base_types }
    end
  end

  # GET /base_types/1
  # GET /base_types/1.json
  def show
    @base_type = BaseType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @base_type }
    end
  end

  # GET /base_types/new
  # GET /base_types/new.json
  def new
    @base_type = BaseType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @base_type }
    end
  end

  # GET /base_types/1/edit
  def edit
    @base_type = BaseType.find(params[:id])
  end

  # POST /base_types
  # POST /base_types.json
  def create
    @base_type = BaseType.new(params[:base_type])

    respond_to do |format|
      if @base_type.save
        format.html { redirect_to @base_type, notice: 'Base type was successfully created.' }
        format.json { render json: @base_type, status: :created, location: @base_type }
      else
        format.html { render action: "new" }
        format.json { render json: @base_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /base_types/1
  # PUT /base_types/1.json
  def update
    @base_type = BaseType.find(params[:id])

    respond_to do |format|
      if @base_type.update_attributes(params[:base_type])
        format.html { redirect_to @base_type, notice: 'Base type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @base_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_types/1
  # DELETE /base_types/1.json
  def destroy
    @base_type = BaseType.find(params[:id])
    @base_type.destroy

    respond_to do |format|
      format.html { redirect_to base_types_url }
      format.json { head :no_content }
    end
  end
end
