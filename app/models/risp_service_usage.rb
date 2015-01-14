class RispServiceUsage < ActiveRecord::Base
  attr_accessible :created, :project_service_id, :usage
  belongs_to :risp_project_service, :foreign_key => "project_service_id"
end
