Rails.application.routes.draw do
	mount ActionCable.server => '/cable'

  get 'rooms/show'

  get 'herbs/graph_one'
  get 'herbs/graph_two'
  get 'herbs/graph_three'
  get 'herbs/graph_four'
  get 'herbs/graph_five'

  get 'static_pages/info'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root controller: :static_pages, action: :home


end
