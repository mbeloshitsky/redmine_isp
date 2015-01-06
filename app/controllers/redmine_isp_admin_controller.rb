class RedmineIspAdminController < ApplicationController
  unloadable

  def index
    @services = RispService.all
  end

  def links
    @links = RispProjectService.all
  end

  def add_service
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
