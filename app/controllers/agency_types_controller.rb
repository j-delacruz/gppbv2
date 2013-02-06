class AgencyTypesController < ApplicationController
  # GET /agency_types
  # GET /agency_types.json
  def index
    @agency_types = AgencyType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agency_types }
    end
  end

  # GET /agency_types/1
  # GET /agency_types/1.json
  def show
    @agency_type = AgencyType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agency_type }
    end
  end

  # GET /agency_types/new
  # GET /agency_types/new.json
  def new
    @agency_type = AgencyType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agency_type }
    end
  end

  # GET /agency_types/1/edit
  def edit
    @agency_type = AgencyType.find(params[:id])
  end

  # POST /agency_types
  # POST /agency_types.json
  def create
    @agency_type = AgencyType.new(params[:agency_type])

    respond_to do |format|
      if @agency_type.save
        format.html { redirect_to @agency_type, notice: 'Agency type was successfully created.' }
        format.json { render json: @agency_type, status: :created, location: @agency_type }
      else
        format.html { render action: "new" }
        format.json { render json: @agency_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agency_types/1
  # PUT /agency_types/1.json
  def update
    @agency_type = AgencyType.find(params[:id])

    respond_to do |format|
      if @agency_type.update_attributes(params[:agency_type])
        format.html { redirect_to @agency_type, notice: 'Agency type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @agency_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agency_types/1
  # DELETE /agency_types/1.json
  def destroy
    @agency_type = AgencyType.find(params[:id])
    @agency_type.destroy

    respond_to do |format|
      format.html { redirect_to agency_types_url }
      format.json { head :no_content }
    end
  end
end
