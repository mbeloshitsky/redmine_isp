module RedmineIspAdminHelper
	def risp_services_path(service)
		url_for :controller => 'redmine_isp_admin', :action => 'add_service'
	end
end
