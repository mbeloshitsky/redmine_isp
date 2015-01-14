class RispProjectServicesController < ApplicationController

  layout 'admin'
  # GET /risp_project_services
  # GET /risp_project_services.json
  def index
    @risp_project_services = RispProjectService.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @risp_project_services }
    end
  end

  # GET /risp_project_services/1
  # GET /risp_project_services/1.json
  def show
    @risp_project_service = RispProjectService.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @risp_project_service }
    end
  end

  # GET /risp_project_services/new
  # GET /risp_project_services/new.json
  def new
    @risp_project_service = RispProjectService.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @risp_project_service }
    end
  end

  # GET /risp_project_services/1/edit
  def edit
    @risp_project_service = RispProjectService.find(params[:id])
  end

  # POST /risp_project_services
  # POST /risp_project_services.json
  def create
    @risp_project_service = RispProjectService.new(params[:risp_project_service])

    respond_to do |format|
      if @risp_project_service.save
        format.html { redirect_to @risp_project_service, notice: 'Risp project service was successfully created.' }
        format.json { render json: @risp_project_service, status: :created, location: @risp_project_service }
      else
        format.html { render action: "new" }
        format.json { render json: @risp_project_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /risp_project_services/1
  # PUT /risp_project_services/1.json
  def update
    @risp_project_service = RispProjectService.find(params[:id])

    respond_to do |format|
      if @risp_project_service.update_attributes(params[:risp_project_service])
        format.html { redirect_to @risp_project_service, notice: 'Risp project service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @risp_project_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /risp_project_services/1
  # DELETE /risp_project_services/1.json
  def destroy
    @risp_project_service = RispProjectService.find(params[:id])
    @risp_project_service.destroy

    respond_to do |format|
      format.html { redirect_to risp_project_services_url }
      format.json { head :no_content }
    end
  end
end
