Rails.application.routes.draw do
  resources :notes
  resources :idols
  get '/'=>'dashers#index'
  get '/docs' => 'docs#index'
  get '/critique' => 'comments#index'
end
