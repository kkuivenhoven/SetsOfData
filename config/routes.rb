Rails.application.routes.draw do

  get 'herbs/graph_one'

  get 'herbs/graph_two'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root controller: :static_pages, action: :home
end
