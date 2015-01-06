# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get    	'isp', 							:to => 'redmine_isp_admin#index'

post   	'isp/add',  					:to => 'redmine_isp_admin#add_service'
put    	'isp/:id',  					:to => 'redmine_isp_admin#edit_service'
delete 	'isp/:id',  					:to => 'redmine_isp_admin#del_service'

post   	'project/:id/add_isp/:sid',  	:to => 'redmine_isp_admin#add_service_link'
put    	'project/:id/edit_isp/:sid', 	:to => 'redmine_isp_admin#edit_service_link'
delete 	'project/:id/del_isp/:sid',  	:to => 'redmine_isp_admin#del_service_link'

get 	'project/:id/isp', 				:to => 'redmine_isp_usage#index'
get 	'project/:id/isp_detail', 		:to => 'redmine_isp_usage#service'
post 	'project/:id/isp/:sid',			:to => 'redmine_isp_usage#register'

post 'post/:id/vote', :to => 'polls#vote'