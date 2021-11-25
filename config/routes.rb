Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions', registrations: 'users/registrations'
  }


  
  root 'bibliotecas#index'

  resources :libros, :bibliotecas, :autors, :relacion_libros, :editorials, :users
 
  #get 'relacion_libros/index'
  #get 'relacion_libros/show'
  #get 'relacion_libros/edit'
  #get 'bibliotecas/index'
  #get 'bibliotecas/show'
  #get 'bibliotecas/edit'
  #get 'autors/index'
  #get 'autors/show'
  #get 'autors/edit'
  #get 'libros/index'
  #get 'libros/show'
  #get 'libros/edit'
  #get 'libros/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

