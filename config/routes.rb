PluploadExample::Application.routes.draw do
  root :to => "assets#index"
  resources :assets
end
