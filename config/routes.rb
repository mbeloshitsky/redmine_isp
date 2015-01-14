# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

resources :risp_services
resources :risp_project_services
resources :risp_service_usages

get '/project/:id/isp' => 'risp_project_usage#index'
