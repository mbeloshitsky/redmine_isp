class RispServiceUsagesController < ApplicationController

  layout 'admin'

  # GET /risp_service_usages
  # GET /risp_service_usages.json
  def index
    @risp_service_usages = RispServiceUsage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @risp_service_usages }
    end
  end

  # GET /risp_service_usages/1
  # GET /risp_service_usages/1.json
  def show
    @risp_service_usage = RispServiceUsage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @risp_service_usage }
    end
  end

  # GET /risp_service_usages/new
  # GET /risp_service_usages/new.json
  def new
    @risp_service_usage = RispServiceUsage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @risp_service_usage }
    end
  end

  # GET /risp_service_usages/1/edit
  def edit
    @risp_service_usage = RispServiceUsage.find(params[:id])
  end

  # POST /risp_service_usages
  # POST /risp_service_usages.json
  def create
    @risp_service_usage = RispServiceUsage.new(params[:risp_service_usage])

    respond_to do |format|
      if @risp_service_usage.save
        format.html { redirect_to @risp_service_usage, notice: 'Risp service usage was successfully created.' }
        format.json { render json: @risp_service_usage, status: :created, location: @risp_service_usage }
      else
        format.html { render action: "new" }
        format.json { render json: @risp_service_usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /risp_service_usages/1
  # PUT /risp_service_usages/1.json
  def update
    @risp_service_usage = RispServiceUsage.find(params[:id])

    respond_to do |format|
      if @risp_service_usage.update_attributes(params[:risp_service_usage])
        format.html { redirect_to @risp_service_usage, notice: 'Risp service usage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @risp_service_usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /risp_service_usages/1
  # DELETE /risp_service_usages/1.json
  def destroy
    @risp_service_usage = RispServiceUsage.find(params[:id])
    @risp_service_usage.destroy

    respond_to do |format|
      format.html { redirect_to risp_service_usages_url }
      format.json { head :no_content }
    end
  end
end
