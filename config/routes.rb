Rails.application.routes.draw do
  root 'static_pages#home'
  get 'home' => 'static_pages#home'
  get 'projects' => 'static_pages#projects'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  post 'convert' => 'static_pages#convert'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
