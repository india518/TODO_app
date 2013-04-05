TodoApp::Application.routes.draw do
  resources :projects do
      resources :items, :only => [:index, :new, :create]
  end
  resources :items
end
