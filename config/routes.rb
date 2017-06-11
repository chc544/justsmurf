Rails.application.routes.draw do

  post 'checkout', to: 'items#sale' 

  resources :items

  get 'items/new'

  get 'users/new'

  root 'items#index'

  get  '/help',    to: 'static_pages#help'

  get  '/faq',    to: 'static_pages#faq'

  get  '/apply',    to: 'static_pages#apply'

  get  '/account',    to: 'users#new'

  get  '/checkout',    to: 'static_pages#checkout'

end
