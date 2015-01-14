Redmine::Plugin.register :redmine_isp do
  name 'Redmine Isp plugin'
  author 'Michel Beloshitsky'
  description 'Plugin, that adds to redmine Service Provider capabilities (plans, services, usage data)'
  version '0.0.2'
  url 'http://github.com/mbeloshitsky/redmine_isp'
  author_url 'http://mbeloshitsky.github.io'

  permission :view_isp_all_usage,      :risp_service_usages => [:index, :show]
  permission :view_isp_own_usage,      :risp_project_usage => [:index]
  permission :register_isp_usage,  :risp_service_usages => :create
  permission :admin_isp_services,  :risp_services => [
  		:index, 
  		:show, 
  		:create, 
  		:delete
  	]
  permission :assign_isp_services, :risp_project_services => [
  		:index, 
  		:show, 
  		:create, 
  		:delete
  	]

  menu :admin_menu, :risp_services, 
  	{ :controller => 'risp_services', :action => 'index' }, 
  	:caption => 'ISP'
  menu :project_menu, :risp_project_usage, 
  	{ :controller => 'risp_project_usage', :action => 'index' }, 
  	:caption => 'Services', :after => :activity
end
