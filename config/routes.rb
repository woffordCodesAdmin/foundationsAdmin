Rails.application.routes.draw do
  resources :comments
  get '/'=>'dashers#index'
  get '/critique' => 'comments#index'
end
