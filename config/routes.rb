Rails.application.routes.draw do
  resources :posts, only: [:index, :show]

  root 'posts#home'

  
  match '*path' => redirect('/'), via: :get
end
