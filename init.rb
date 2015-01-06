Redmine::Plugin.register :redmine_isp do
  name 'Redmine Isp plugin'
  author 'Michel Beloshitsky'
  description 'Plugin, that adds to redmine Service Provider capabilities (plans, services, usage data)'
  version '0.0.2'
  url 'http://github.com/mbeloshitsky/redmine_isp'
  author_url 'http://mbeloshitsky.github.io'

  # permission :redmine_isp, { :redmine_isp => [:index] }, :public => true
  permission :view_isp_usage,      :redmine_isp_usage => [:index, :service]
  permission :register_isp_usage,  :redmine_isp_usage => :register
  permission :admin_isp_services,  :redmine_isp_admin => [
  		:index, 
  		:add_service, 
  		:edit_service, 
  		:del_service
  	]
  permission :assign_isp_services, :redmine_isp_admin => [
  		:index, 
  		:add_service_link, 
  		:edit_service_link, 
  		:del_service_link
  	]

  menu :admin_menu, :redmine_isp, 
  	{ :controller => 'redmine_isp_admin', :action => 'index' }, 
  	:caption => 'ISP'
  menu :project_menu, :redmine_isp, 
  	{ :controller => 'redmine_isp_usage', :action => 'index' }, 
  	:caption => 'Services', :after => :activity, :param => :project_id
end
