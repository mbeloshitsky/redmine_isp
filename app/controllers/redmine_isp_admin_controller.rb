class RedmineIspAdminController < ApplicationController
  unloadable

  def index
    @services = RispService.all
  end

  def links
    @links = RispProjectService.all
  end

  def add_service
    @service = RispService.new
  end

  def create_service
    service = RispService.new
    service.name         = params[:name]
    service.description  = params[:description]
    service.measure_unit = params[:measure_unit]
    service.save

    redirect_to :action => 'index'
  end

  def add_serivce_link
  end

  def edit_service
  end

  def edit_service_link
  end

  def del_service
  end

  def del_service_link
  end
end
