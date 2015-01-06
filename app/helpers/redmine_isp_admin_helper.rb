module RedmineIspAdminHelper
	def risp_services_path(service)
		if not service
			url_for :controller => 'redmine_isp_admin', :action => 'add_service'
		else
			url_for :controller => 'redmine_isp_admin', :action => 'edit_service', :id => service.id
		end
	end
end
