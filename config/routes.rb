Rails.application.routes.draw do

  get 'rooms/show'

  get 'herbs/graph_one'

  get 'herbs/graph_two'

  get 'static_pages/info'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root controller: :static_pages, action: :home

	mount ActionCable.server => '/cable'

end
