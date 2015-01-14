class RispProjectUsageController < ApplicationController
  unloadable

  def index
    @project = Project.where(:identifier => params[:id]).first
    @services = RispProjectService.where(:project_id => @project.id)
    @service_names = {}
    @services.each { |s| @service_names[s.id] = s.risp_service.name }
    @usages = RispServiceUsage
        .where(:project_service_id => @services.collect {|s| s.id})
        .order("created_at DESC")
        .take(100)
  end
end
