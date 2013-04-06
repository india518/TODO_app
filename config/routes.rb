TodoApp::Application.routes.draw do
  resources :users
  
  resources :teams do
      resources :projects, :only => [:new]
  end
  
  resources :projects do
#      resources :items, :only => [:index, :new, :create]
      resources :items, :only => [:new, :index]
  end
  
  resources :items, :except => [:new, :index]
end
