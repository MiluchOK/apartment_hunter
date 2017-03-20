Rails.application.routes.draw do
  post 'orders/create'

  post 'orders/update'

  get 'orders/delete'

  get '/orders/new'

  root to: 'static_pages#landing'
  get 'static_pages/landing'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
