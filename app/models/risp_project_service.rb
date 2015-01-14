class RispProjectService < ActiveRecord::Base
  attr_accessible :project_id, :service_id
  belongs_to :risp_service, :foreign_key => "service_id"
  belongs_to :project

  def title()
    project.name + ' - ' + risp_service.name
  end
end
