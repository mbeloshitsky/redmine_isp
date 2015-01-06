# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get    	'isp', 							:to => 'redmine_isp_admin#index'
get    	'isp/links', 					:to => 'redmine_isp_admin#links'

get   	'isp/add',  					:to => 'redmine_isp_admin#add_service'
post   	'isp/add',  					:to => 'redmine_isp_admin#create_service'
get     'isp/service/:id',				:to => 'redmine_isp_admin#edit_service'
put    	'isp/service/:id',  			:to => 'redmine_isp_admin#edit_service'
delete 	'isp/service/:id',  			:to => 'redmine_isp_admin#del_service'

post   	'project/:id/add_isp/:sid',  	:to => 'redmine_isp_admin#add_service_link'
put    	'project/:id/edit_isp/:sid', 	:to => 'redmine_isp_admin#edit_service_link'
delete 	'project/:id/del_isp/:sid',  	:to => 'redmine_isp_admin#del_service_link'

get 	'project/:id/isp', 				:to => 'redmine_isp_usage#index'
get 	'project/:id/isp_detail', 		:to => 'redmine_isp_usage#service'
post 	'project/:id/isp/:sid',			:to => 'redmine_isp_usage#register'

post 'post/:id/vote', :to => 'polls#vote'