class RispServicesController < ApplicationController

  layout 'admin'

  # GET /risp_services
  # GET /risp_services.json
  def index
    @risp_services = RispService.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @risp_services }
    end
  end

  # GET /risp_services/1
  # GET /risp_services/1.json
  def show
    @risp_service = RispService.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @risp_service }
    end
  end

  # GET /risp_services/new
  # GET /risp_services/new.json
  def new
    @risp_service = RispService.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @risp_service }
    end
  end

  # GET /risp_services/1/edit
  def edit
    @risp_service = RispService.find(params[:id])
  end

  # POST /risp_services
  # POST /risp_services.json
  def create
    @risp_service = RispService.new(params[:risp_service])

    respond_to do |format|
      if @risp_service.save
        format.html { redirect_to @risp_service, notice: 'Risp service was successfully created.' }
        format.json { render json: @risp_service, status: :created, location: @risp_service }
      else
        format.html { render action: "new" }
        format.json { render json: @risp_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /risp_services/1
  # PUT /risp_services/1.json
  def update
    @risp_service = RispService.find(params[:id])

    respond_to do |format|
      if @risp_service.update_attributes(params[:risp_service])
        format.html { redirect_to @risp_service, notice: 'Risp service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @risp_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /risp_services/1
  # DELETE /risp_services/1.json
  def destroy
    @risp_service = RispService.find(params[:id])
    @risp_service.destroy

    respond_to do |format|
      format.html { redirect_to risp_services_url }
      format.json { head :no_content }
    end
  end
end
