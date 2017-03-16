Rails.application.routes.draw do

  root :to => 'pages#home'

  resources :users, :only => [:new, :create, :update, :index, :show ]
  resources :categories
  get '/mypoems' => 'poems#my_poems', :as => 'my_poems'

  resources :poems do
    resources :favourites
  end

  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'

end
