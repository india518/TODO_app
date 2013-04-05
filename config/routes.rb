TodoApp::Application.routes.draw do
  resources :teams do
      resources :projects, :only => [:index, :new, :create]
  end
  
  resources :projects do
      resources :items, :only => [:index, :new, :create]
  end
  
  resources :items
end
