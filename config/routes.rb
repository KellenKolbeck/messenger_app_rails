Rails.application.routes.draw do
  resources :clients


  resources :messages , :only => [:index, :new, :create, :show, :edit, :destroy]

end
